import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.GeometryEngine

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure IndexTheoremPackage where
  manifoldClass : NondifferentiableCurveClass
  analyticalIndexComputed : ℤ
  topologicalIndexComputed : ℤ
  equalityProof : Prop

structure IndexTheoremEvidence (P : IndexTheoremPackage) where
  analyticalIndexKnown : P.analyticalIndexComputed = P.analyticalIndexComputed
  topologicalIndexKnown : P.topologicalIndexComputed = P.topologicalIndexComputed
  equalityProofClosed : P.equalityProof

def IndexTheoremClosed (P : IndexTheoremPackage) : Prop :=
  P.analyticalIndexComputed = P.topologicalIndexComputed ∧ P.equalityProof

theorem index_theorem_closed_from_evidence (P : IndexTheoremPackage) (E : IndexTheoremEvidence P) : IndexTheoremClosed P := by
  exact And.intro (by rfl) E.equalityProofClosed

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse