import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure GlobalGeometricConstraintPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  geodesicCompleteness : Prop
  injectivityRadius : Prop
  convexityRadius : Prop
  globalConstraint : Prop
  constraintClosed : Prop

structure GlobalGeometricConstraintEvidence (G : GlobalGeometricConstraintPackage) where
  geodesicCompletenessClosed : G.geodesicCompleteness
  injectivityRadiusClosed : G.injectivityRadius
  convexityRadiusClosed : G.convexityRadius
  globalConstraintClosed : G.globalConstraint
  constraintClosedTerm : G.constraintClosed

def GlobalGeometricConstraintClosed (G : GlobalGeometricConstraintPackage) : Prop :=
  G.geodesicCompleteness ∧ G.injectivityRadius ∧ G.convexityRadius ∧ G.globalConstraint ∧ G.constraintClosed

theorem global_geometric_constraint_closed_from_evidence (G : GlobalGeometricConstraintPackage) (E : GlobalGeometricConstraintEvidence G) : GlobalGeometricConstraintClosed G := by
  exact And.intro E.geodesicCompletenessClosed (And.intro E.injectivityRadiusClosed (And.intro E.convexityRadiusClosed (And.intro E.globalConstraintClosed E.constraintClosedTerm)))

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse