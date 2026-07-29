import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure NondifferentiableCurvaturePackage where
  space : Type u
  topology : TopologicalSpace space
  curvatureMeasure : Type v
  boundedVariationCondition : Prop
  integralCurvatureBounds : Prop
  weakCurvatureDefined : Prop

structure NondifferentiableCurvatureEvidence (C : NondifferentiableCurvaturePackage) where
  boundedVariationClosed : C.boundedVariationCondition
  integralCurvatureBoundsClosed : C.integralCurvatureBounds
  weakCurvatureDefinedClosed : C.weakCurvatureDefined

def NondifferentiableCurvatureClosed (C : NondifferentiableCurvaturePackage) : Prop :=
  C.boundedVariationCondition ∧ C.integralCurvatureBounds ∧ C.weakCurvatureDefined

theorem nondifferentiable_curvature_closed_from_evidence (C : NondifferentiableCurvaturePackage)
    (E : NondifferentiableCurvatureEvidence C) : NondifferentiableCurvatureClosed C := by
  exact And.intro E.boundedVariationClosed
    (And.intro E.integralCurvatureBoundsClosed E.weakCurvatureDefinedClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse