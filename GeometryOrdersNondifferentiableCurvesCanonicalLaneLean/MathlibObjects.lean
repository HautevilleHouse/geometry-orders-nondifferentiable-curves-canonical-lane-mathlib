import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NondifferentiableCurve where
  carrier : Type
  topology : TopologicalSpace carrier
  order : carrier → carrier → Prop
  orderProperties : Prop

structure NondifferentiableCurveAdmittedObject where
  curve : NondifferentiableCurve
  curvatureBounded : Prop
  variationFinite : Prop
  conclusion : curvatureBounded ∧ variationFinite

structure GeometryOrdersEndgameState where
  object : NondifferentiableCurveAdmittedObject

def NondifferentiableCurveWitnessClosed (O : NondifferentiableCurveAdmittedObject) : Prop :=
  O.curvatureBounded ∧ O.variationFinite

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse
