import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure ConnectionPackage where
  bundle : Type u
  base : Type v
  topology : TopologicalSpace base
  connectionForm : Type w
  curvatureForm : Type x
  parallelTransport : Type y
  holonomyGroup : Type z
  connectionFlat : Prop
  holonomyDiscrete : Prop
  connectionClosed : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  connectionFlatClosed : C.connectionFlat
  holonomyDiscreteClosed : C.holonomyDiscrete
  connectionClosedTerm : C.connectionClosed

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.connectionFlat ∧ C.holonomyDiscrete ∧ C.connectionClosed

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.connectionFlatClosed (And.intro E.holonomyDiscreteClosed E.connectionClosedTerm)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse