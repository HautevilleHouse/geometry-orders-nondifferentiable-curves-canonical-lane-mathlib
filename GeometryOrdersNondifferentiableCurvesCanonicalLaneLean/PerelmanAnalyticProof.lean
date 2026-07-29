import GeometryOrdersNondifferentiableCurvesCanonicalLaneLean.CoreLemmas

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure CurvatureAnalyticCertificate where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs

def CurvatureAnalyticCertificateClosed (C : CurvatureAnalyticCertificate) : Prop :=
  C.riemannTensorSymmetries ∧
  C.bianchiIdentities ∧
  C.ricciContractionLaw ∧
  C.scalarTraceLaw ∧
  C.curvatureEvolutionInputs

theorem curvature_analytic_certificate_closed (C : CurvatureAnalyticCertificate) :
    CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed C.curvatureEvolutionInputsClosed)))

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse
