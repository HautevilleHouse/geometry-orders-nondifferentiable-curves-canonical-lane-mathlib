import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms (C : CurvatureAnalyticCertificate) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : CurvatureAnalyticCertificateClosed C

def CurvatureAnalyticCertificate.evidenceTerms (C : CurvatureAnalyticCertificate) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := curvature_analytic_certificate_closed C
  }

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse
