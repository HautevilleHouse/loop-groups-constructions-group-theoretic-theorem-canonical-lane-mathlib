import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure AffineLieAlgebra (G : Type u) [Group G] (L : LoopGroup G) where
  lieAlgebra : Type u
  lieBracket : lieAlgebra → lieAlgebra → lieAlgebra
  centralElement : lieAlgebra
  derivationMap : L.carrier → (lieAlgebra → lieAlgebra)

structure AffineLieAlgebraConstruction {G : Type u} [Group G] {L : LoopGroup G} (A : AffineLieAlgebra G L) where
  lieAlgebraStructure : Prop
  centralExtensionCorrespondence : Prop
  rootSystem : Prop
  weylGroupAction : Prop

structure AffineLieAlgebraEvidence {G : Type u} [Group G] {L : LoopGroup G} {A : AffineLieAlgebra G L} (C : AffineLieAlgebraConstruction A) where
  lieAlgebraStructureClosed : C.lieAlgebraStructure
  centralExtensionCorrespondenceClosed : C.centralExtensionCorrespondence
  rootSystemClosed : C.rootSystem
  weylGroupActionClosed : C.weylGroupAction

def AffineLieAlgebraClosed {G : Type u} [Group G] {L : LoopGroup G} {A : AffineLieAlgebra G L} (C : AffineLieAlgebraConstruction A) : Prop :=
  C.lieAlgebraStructure ∧ C.centralExtensionCorrespondence ∧ C.rootSystem ∧ C.weylGroupAction

theorem affine_lie_algebra_closed_from_evidence {G : Type u} [Group G] {L : LoopGroup G} {A : AffineLieAlgebra G L} (C : AffineLieAlgebraConstruction A) (E : AffineLieAlgebraEvidence C) : AffineLieAlgebraClosed C := by
  exact And.intro E.lieAlgebraStructureClosed (And.intro E.centralExtensionCorrespondenceClosed (And.intro E.rootSystemClosed E.weylGroupActionClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse