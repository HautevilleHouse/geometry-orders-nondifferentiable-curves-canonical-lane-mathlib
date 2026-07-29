import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure WeakGeodesicFlowPackage where
  space : Type u
  topology : TopologicalSpace space
  orderRelation : space → space → Prop
  weakGeodesicFamily : Type v
  continuityCondition : Prop
  orderPreservingCondition : Prop

structure WeakGeodesicFlowEvidence (W : WeakGeodesicFlowPackage) where
  continuityClosed : W.continuityCondition
  orderPreservingClosed : W.orderPreservingCondition

def WeakGeodesicFlowClosed (W : WeakGeodesicFlowPackage) : Prop :=
  W.continuityCondition ∧ W.orderPreservingCondition

theorem weak_geodesic_flow_closed_from_evidence (W : WeakGeodesicFlowPackage)
    (E : WeakGeodesicFlowEvidence W) : WeakGeodesicFlowClosed W := by
  exact And.intro E.continuityClosed E.orderPreservingClosed

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse