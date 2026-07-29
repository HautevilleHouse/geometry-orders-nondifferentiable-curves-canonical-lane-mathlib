import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

def ConstrainedGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometry_endgame (A : AdmissibleClass) :
    ConstrainedGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse