import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.GeometryEngine

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure CurvatureInvariantPackage where
  baseClass : NondifferentiableCurveClass
  invariantComputation : Prop
  invarianceProof : Prop
  curvatureConservation : Prop

structure CurvatureInvariantEvidence (P : CurvatureInvariantPackage) where
  invariantComputationClosed : P.invariantComputation
  invarianceProofClosed : P.invarianceProof
  curvatureConservationClosed : P.curvatureConservation

def CurvatureInvariantClosed (P : CurvatureInvariantPackage) : Prop :=
  P.invariantComputation ∧ P.invarianceProof ∧ P.curvatureConservation

theorem curvature_invariant_closed_from_evidence (P : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence P) : CurvatureInvariantClosed P := by
  exact And.intro E.invariantComputationClosed (And.intro E.invarianceProofClosed E.curvatureConservationClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse