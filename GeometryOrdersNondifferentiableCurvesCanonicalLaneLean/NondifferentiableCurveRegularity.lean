import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure NondifferentiableCurvePackage where
  curveSpace : Type u
  topology : TopologicalSpace curveSpace
  almostEverywhereDerivative : Type v
  curvatureMeasure : Type w
  totalCurvature : Type x
  regularityAssumption : Prop
  curvatureBound : Prop
  curveClosed : Prop

structure NondifferentiableCurveEvidence (C : NondifferentiableCurvePackage) where
  regularityAssumptionClosed : C.regularityAssumption
  curvatureBoundClosed : C.curvatureBound
  curveClosedTerm : C.curveClosed

def NondifferentiableCurveClosed (C : NondifferentiableCurvePackage) : Prop :=
  C.regularityAssumption ∧ C.curvatureBound ∧ C.curveClosed

theorem nondifferentiable_curve_closed_from_evidence (C : NondifferentiableCurvePackage) (E : NondifferentiableCurveEvidence C) : NondifferentiableCurveClosed C := by
  exact And.intro E.regularityAssumptionClosed (And.intro E.curvatureBoundClosed E.curveClosedTerm)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse