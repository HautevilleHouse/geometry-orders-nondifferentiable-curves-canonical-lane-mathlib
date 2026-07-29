import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.GeometryEngine

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure ConnectionTheoryPackage where
  baseClass : NondifferentiableCurveClass
  connectionDefined : Prop
  curvatureFormComputed : Prop
  parallelTransportExists : Prop
  holonomyGroupDefined : Prop

structure ConnectionTheoryEvidence (P : ConnectionTheoryPackage) where
  connectionDefinedClosed : P.connectionDefined
  curvatureFormComputedClosed : P.curvatureFormComputed
  parallelTransportExistsClosed : P.parallelTransportExists
  holonomyGroupDefinedClosed : P.holonomyGroupDefined

def ConnectionTheoryClosed (P : ConnectionTheoryPackage) : Prop :=
  P.connectionDefined ∧ P.curvatureFormComputed ∧ P.parallelTransportExists ∧ P.holonomyGroupDefined

theorem connection_theory_closed_from_evidence (P : ConnectionTheoryPackage) (E : ConnectionTheoryEvidence P) : ConnectionTheoryClosed P := by
  exact And.intro E.connectionDefinedClosed (And.intro E.curvatureFormComputedClosed (And.intro E.parallelTransportExistsClosed E.holonomyGroupDefinedClosed))

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse