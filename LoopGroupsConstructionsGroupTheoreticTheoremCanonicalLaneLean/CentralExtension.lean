import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure CentralExtension where
  baseLoopGroup : Type u
  extensionData : Type v
  cocycleCondition : Prop
  extensionClosed : cocycleCondition

def CE_closure (C : CentralExtension) : Prop :=
  C.cocycleCondition ∧ C.extensionClosed

theorem CE_closure_from_structure (C : CentralExtension) : CE_closure C := by
  exact And.intro C.cocycleCondition C.extensionClosed

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse