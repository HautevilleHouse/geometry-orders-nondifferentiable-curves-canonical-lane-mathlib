import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleGeometryCurve where
  space : Type
  topology : TopologicalSpace space
  metric : MetricSpace space
  curve : Set space
  curveConnected : IsConnected curve
  curveClosed : IsClosed curve
  curveBounded : Bounded curve
  dimensionOne : SetLike.FiniteDimensional ℝ (Subtype.val '' curve) 1
  conclusion : True

structure AdmissibleClass where
  object : AdmissibleGeometryCurve
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NondifferentiableCurveClosed A.object.curve ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse