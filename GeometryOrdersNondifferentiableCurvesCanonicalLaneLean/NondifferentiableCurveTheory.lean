import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure NondifferentiableCurveTheoryPackage where
  curve : NondifferentiableCurve
  orderStructure : Type
  rectifiable : Prop
  lengthFinite : Prop
  orderCompatibleWithTopology : Prop

structure NondifferentiableCurveTheoryEvidence (P : NondifferentiableCurveTheoryPackage) where
  rectifiableClosed : P.rectifiable
  lengthFiniteClosed : P.lengthFinite
  orderCompatibleWithTopologyClosed : P.orderCompatibleWithTopology

def NondifferentiableCurveTheoryClosed (P : NondifferentiableCurveTheoryPackage) : Prop :=
  P.rectifiable ∧ P.lengthFinite ∧ P.orderCompatibleWithTopology

theorem nondifferentiable_curve_theory_closed_from_evidence (P : NondifferentiableCurveTheoryPackage)
    (E : NondifferentiableCurveTheoryEvidence P) : NondifferentiableCurveTheoryClosed P := by
  exact And.intro E.rectifiableClosed (And.intro E.lengthFiniteClosed E.orderCompatibleWithTopologyClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse
