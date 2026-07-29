import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NondifferentiableCurveClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse