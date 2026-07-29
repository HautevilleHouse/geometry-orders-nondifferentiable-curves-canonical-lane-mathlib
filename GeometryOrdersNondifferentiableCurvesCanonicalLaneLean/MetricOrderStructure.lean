import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure MetricOrderStructure where
  space : Type u
  topology : TopologicalSpace space
  orderRelation : space → space → Prop
  orderCompatibleWithTopology : Prop
  curvatureBoundedBelow : Prop
  finiteBranching : Prop

structure MetricOrderEvidence (M : MetricOrderStructure) where
  orderCompatibleClosed : M.orderCompatibleWithTopology
  curvatureBoundedBelowClosed : M.curvatureBoundedBelow
  finiteBranchingClosed : M.finiteBranching

def MetricOrderClosed (M : MetricOrderStructure) : Prop :=
  M.orderCompatibleWithTopology ∧ M.curvatureBoundedBelow ∧ M.finiteBranching

theorem metric_order_closed_from_evidence (M : MetricOrderStructure) (E : MetricOrderEvidence M) :
    MetricOrderClosed M := by
  exact And.intro E.orderCompatibleClosed
    (And.intro E.curvatureBoundedBelowClosed E.finiteBranchingClosed)

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse