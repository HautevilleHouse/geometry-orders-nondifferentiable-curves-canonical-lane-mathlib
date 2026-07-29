import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure IndexTheoremPackage where
  operator : Type u
  ellipticComplex : Type v
  analyticalIndex : Type w
  topologicalIndex : Type x
  indexTheorem : Prop
  atiyahSingerSpecialization : Prop
  indexClosed : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexTheoremClosed : I.indexTheorem
  atiyahSingerSpecializationClosed : I.atiyahSingerSpecialization
  indexClosedTerm : I.indexClosed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexTheorem ∧ I.atiyahSingerSpecialization ∧ I.indexClosed

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexTheoremClosed (And.intro E.atiyahSingerSpecializationClosed E.indexClosedTerm)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse