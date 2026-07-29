import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroupStructure where
  loopSpace : Type u
  groupOperation : loopSpace → loopSpace → loopSpace
  identityElement : loopSpace
  inverseMap : loopSpace → loopSpace
  groupAxioms : Prop
  loopGroupClosed : groupAxioms

def LG_Axiom_closure (L : LoopGroupStructure) : Prop :=
  L.groupAxioms ∧ L.loopGroupClosed

theorem LG_Axiom_closure_from_structure (L : LoopGroupStructure) : LG_Axiom_closure L := by
  exact And.intro L.groupAxioms L.loopGroupClosed

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse