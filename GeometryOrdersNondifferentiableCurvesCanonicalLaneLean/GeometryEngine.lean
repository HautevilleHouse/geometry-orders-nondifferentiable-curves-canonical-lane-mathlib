import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOrdersNondifferentiableCurvesCanonicalLaneLean

structure NondifferentiableCurveClass where
  carrier : Type u
  topology : TopologicalSpace carrier
  curveFamily : Type v
  orderRelation : carrier → carrier → Prop
  nondifferentiableStructure : Prop

structure CurvatureInvariant where
  curveClass : NondifferentiableCurveClass
  invariantType : Type w
  invariantValue : invariantType
  invariantClosed : Prop

structure ConnectionTheoryInstance where
  baseClass : NondifferentiableCurveClass
  connectionType : Type u
  curvatureForm : Type v
  parallelTransport : Prop
  holonomyGroup : Prop

structure IndexTheoremFact where
  manifoldClass : NondifferentiableCurveClass
  analyticalIndex : ℤ
  topologicalIndex : ℤ
  indexEquality : Prop

structure HolonomyData where
  connectionInstance : ConnectionTheoryInstance
  loopSpace : Type u
  holonomyRepresentation : Type v
  holonomyClosed : Prop

end GeometryOrdersNondifferentiableCurvesCanonicalLaneLean
end HautevilleHouse