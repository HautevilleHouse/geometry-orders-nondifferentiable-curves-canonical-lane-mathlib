import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geometryOrdersProjection : Projection GeometryOrdersEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geometry_orders_projection_idempotent (x : GeometryOrdersEndgameState) :
    geometryOrdersProjection.toFun (geometryOrdersProjection.toFun x) = geometryOrdersProjection.toFun x := by
  exact geometryOrdersProjection.idempotent x

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse
