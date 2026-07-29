import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure CurvatureInvariantPackage where
  surface : Type u
  topology : TopologicalSpace surface
  metric : Type v
  gaussCurvature : Type w
  meanCurvature : Type x
  principleCurvatures : Type y
  smoothSurface : Prop
  metricInducesConnection : Prop
  gaussBonnetInvariant : Prop
  curvatureInvariantClosed : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  smoothSurfaceClosed : C.smoothSurface
  metricInducesConnectionClosed : C.metricInducesConnection
  gaussBonnetInvariantClosed : C.gaussBonnetInvariant
  curvatureInvariantClosedTerm : C.curvatureInvariantClosed

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.smoothSurface ∧ C.metricInducesConnection ∧ C.gaussBonnetInvariant ∧ C.curvatureInvariantClosed

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.smoothSurfaceClosed (And.intro E.metricInducesConnectionClosed (And.intro E.gaussBonnetInvariantClosed E.curvatureInvariantClosedTerm))

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse