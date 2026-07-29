import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure NondifferentiableCurve (X : Type u) [TopologicalSpace X] where
  support : Set X
  paramInterval : Set ℝ
  paramMap : ℝ → X
  paramContinuity : ContinuousOn paramMap paramInterval
  paramSurjection : paramMap '' paramInterval = support
  dimensionOne : SetLike.FiniteDimensional ℝ (Set.range paramMap) 1

structure CurveOrdering (X : Type u) [TopologicalSpace X] (γ : NondifferentiableCurve X) where
  orderRelation : X → X → Prop
  orderReflexive : ∀ x ∈ γ.support, orderRelation x x
  orderTransitive : ∀ x y z ∈ γ.support, orderRelation x y → orderRelation y z → orderRelation x z
  orderAntisymmetric : ∀ x y ∈ γ.support, orderRelation x y → orderRelation y x → x = y
  orderTotal : ∀ x y ∈ γ.support, orderRelation x y ∨ orderRelation y x
  orderCompatibleWithParam : ∀ t1 t2 : ℝ, t1 ∈ γ.paramInterval → t2 ∈ γ.paramInterval →
    (t1 ≤ t2) ↔ orderRelation (γ.paramMap t1) (γ.paramMap t2)

structure NondifferentiableCurveEvidence {X : Type u} [TopologicalSpace X] (γ : NondifferentiableCurve X) (C : CurveOrdering X γ) where
  orderReflexiveClosed : C.orderReflexive
  orderTransitiveClosed : C.orderTransitive
  orderAntisymmetricClosed : C.orderAntisymmetric
  orderTotalClosed : C.orderTotal
  orderCompatibleWithParamClosed : C.orderCompatibleWithParam

def NondifferentiableCurveClosed {X : Type u} [TopologicalSpace X] {γ : NondifferentiableCurve X} (C : CurveOrdering X γ) : Prop :=
  C.orderReflexive ∧ C.orderTransitive ∧ C.orderAntisymmetric ∧ C.orderTotal ∧ C.orderCompatibleWithParam

theorem nondifferentiable_curve_closed_from_evidence
    {X : Type u} [TopologicalSpace X] {γ : NondifferentiableCurve X}
    (C : CurveOrdering X γ) (E : NondifferentiableCurveEvidence γ C) :
    NondifferentiableCurveClosed C := by
  exact And.intro E.orderReflexiveClosed
    (And.intro E.orderTransitiveClosed
      (And.intro E.orderAntisymmetricClosed
        (And.intro E.orderTotalClosed E.orderCompatibleWithParamClosed)))

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse