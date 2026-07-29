import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroup (G : Type u) [TopologicalGroup G] where
  baseSpace : Type v
  baseTopology : TopologicalSpace baseSpace
  loopSpace : Type w
  loopTopology : TopologicalSpace loopSpace
  groupStructure : Group loopSpace
  topologicalGroup : TopologicalGroup loopSpace
  pointwiseMultiplication : Prop
  continuityCondition : Prop

structure LoopGroupEvidence (G : Type u) [TopologicalGroup G] (L : LoopGroup G) where
  pointwiseMultiplicationClosed : L.pointwiseMultiplication
  continuityConditionClosed : L.continuityCondition

def LoopGroupClosed (G : Type u) [TopologicalGroup G] (L : LoopGroup G) : Prop :=
  L.pointwiseMultiplication ∧ L.continuityCondition

theorem loopGroup_closed_from_evidence (G : Type u) [TopologicalGroup G] (L : LoopGroup G) (E : LoopGroupEvidence G L) : LoopGroupClosed G L := by
  exact And.intro E.pointwiseMultiplicationClosed E.continuityConditionClosed

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse