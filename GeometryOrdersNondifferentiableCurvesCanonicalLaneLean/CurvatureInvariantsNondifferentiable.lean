import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure NondifferentiableCurve (X : Type u) [TopologicalSpace X] where
  support : Set X
  paramInterval : Set ℝ
  paramMap : ℝ → X
  paramContinuity : ContinuousOn paramMap paramInterval
  paramSurjection : paramMap '' paramInterval = support

structure CurvatureInvariant (X : Type u) [TopologicalSpace X] [MetricSpace X] (γ : NondifferentiableCurve X) where
  curvatureMeasure : Set X → ℝ
  curvatureMeasureFinite : curvatureMeasure γ.support < ∞
  curvatureMeasureNonnegative : ∀ s : Set X, s ⊆ γ.support → 0 ≤ curvatureMeasure s
  curvatureInvariantUnderReparam : ∀ (φ : ℝ → ℝ) (φHomeo : Homeomorph ℝ ℝ),
    (φ '' γ.paramInterval = γ.paramInterval) →
    (curvatureMeasure ∘ γ.paramMap) ∘ φ = curvatureMeasure ∘ γ.paramMap

structure CurvatureInvariantEvidence {X : Type u} [TopologicalSpace X] [MetricSpace X]
    {γ : NondifferentiableCurve X} (I : CurvatureInvariant X γ) where
  curvatureMeasureFiniteClosed : I.curvatureMeasureFinite
  curvatureMeasureNonnegativeClosed : I.curvatureMeasureNonnegative
  curvatureInvariantUnderReparamClosed : I.curvatureInvariantUnderReparam

def CurvatureInvariantClosed {X : Type u} [TopologicalSpace X] [MetricSpace X]
    {γ : NondifferentiableCurve X} (I : CurvatureInvariant X γ) : Prop :=
  I.curvatureMeasureFinite ∧ I.curvatureMeasureNonnegative ∧ I.curvatureInvariantUnderReparam

theorem curvature_invariant_closed_from_evidence
    {X : Type u} [TopologicalSpace X] [MetricSpace X]
    {γ : NondifferentiableCurve X} (I : CurvatureInvariant X γ)
    (E : CurvatureInvariantEvidence I) : CurvatureInvariantClosed I := by
  exact And.intro E.curvatureMeasureFiniteClosed
    (And.intro E.curvatureMeasureNonnegativeClosed E.curvatureInvariantUnderReparamClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse