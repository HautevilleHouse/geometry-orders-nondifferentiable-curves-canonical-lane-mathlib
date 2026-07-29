import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.GeometryEngine

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure HolonomyPackage where
  connectionInstance : ConnectionTheoryInstance
  loopSpaceStructure : Prop
  holonomyRepresentationDefined : Prop
  holonomyGroupComputed : Prop

structure HolonomyEvidence (P : HolonomyPackage) where
  loopSpaceStructureClosed : P.loopSpaceStructure
  holonomyRepresentationDefinedClosed : P.holonomyRepresentationDefined
  holonomyGroupComputedClosed : P.holonomyGroupComputed

def HolonomyClosed (P : HolonomyPackage) : Prop :=
  P.loopSpaceStructure ∧ P.holonomyRepresentationDefined ∧ P.holonomyGroupComputed

theorem holonomy_closed_from_evidence (P : HolonomyPackage) (E : HolonomyEvidence P) : HolonomyClosed P := by
  exact And.intro E.loopSpaceStructureClosed (And.intro E.holonomyRepresentationDefinedClosed E.holonomyGroupComputedClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse