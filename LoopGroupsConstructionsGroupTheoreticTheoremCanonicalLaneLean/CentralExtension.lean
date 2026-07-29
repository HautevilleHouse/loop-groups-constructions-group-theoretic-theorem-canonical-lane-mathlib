import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure CentralExtension (G : Type u) [Group G] (L : LoopGroup G) where
  extensionGroup : Type u
  extensionGroupStruct : Group extensionGroup
  projectionMap : extensionGroup → L.carrier
  kernelIsCentral : Prop
  cocycleCondition : Prop

structure CentralExtensionConstruction {G : Type u} [Group G] {L : LoopGroup G} (E : CentralExtension G L) where
  kernelEmbedding : Prop
  cocycleTrivialization : Prop
  projectiveRepresentation : Prop

structure CentralExtensionEvidence {G : Type u} [Group G] {L : LoopGroup G} {E : CentralExtension G L} (C : CentralExtensionConstruction E) where
  kernelEmbeddingClosed : C.kernelEmbedding
  cocycleTrivializationClosed : C.cocycleTrivialization
  projectiveRepresentationClosed : C.projectiveRepresentation

def CentralExtensionClosed {G : Type u} [Group G] {L : LoopGroup G} {E : CentralExtension G L} (C : CentralExtensionConstruction E) : Prop :=
  C.kernelEmbedding ∧ C.cocycleTrivialization ∧ C.projectiveRepresentation

theorem central_extension_closed_from_evidence {G : Type u} [Group G] {L : LoopGroup G} {E : CentralExtension G L} (C : CentralExtensionConstruction E) (Ev : CentralExtensionEvidence C) : CentralExtensionClosed C := by
  exact And.intro Ev.kernelEmbeddingClosed (And.intro Ev.cocycleTrivializationClosed Ev.projectiveRepresentationClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse