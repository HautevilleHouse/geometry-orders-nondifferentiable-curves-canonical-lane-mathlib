import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure BoundedLengthSpectrumPackage where
  space : Type u
  topology : TopologicalSpace space
  metric : Type v
  lengthFunctional : Type w
  spectrumSet : Set ℝ
  spectrumBounded : Prop
  spectrumClosed : Prop
  lengthFunctionalSemicontinuous : Prop

structure BoundedLengthSpectrumEvidence (B : BoundedLengthSpectrumPackage) where
  spectrumBoundedClosed : B.spectrumBounded
  spectrumClosedClosed : B.spectrumClosed
  lengthFunctionalSemicontinuousClosed : B.lengthFunctionalSemicontinuous

def BoundedLengthSpectrumClosed (B : BoundedLengthSpectrumPackage) : Prop :=
  B.spectrumBounded ∧ B.spectrumClosed ∧ B.lengthFunctionalSemicontinuous

theorem bounded_length_spectrum_closed_from_evidence (B : BoundedLengthSpectrumPackage)
    (E : BoundedLengthSpectrumEvidence B) : BoundedLengthSpectrumClosed B := by
  exact And.intro E.spectrumBoundedClosed
    (And.intro E.spectrumClosedClosed E.lengthFunctionalSemicontinuousClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse