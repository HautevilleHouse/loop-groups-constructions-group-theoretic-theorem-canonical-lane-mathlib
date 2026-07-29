import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroup (G : Type u) [Group G] where
  carrier : Type u
  groupStruct : Group carrier
  evaluationMap : carrier → G
  loopMultiplication : carrier → carrier → carrier
  pointwiseMultiplication : carrier → carrier → carrier

structure LoopGroupConstruction (G : Type u) [Group G] (L : LoopGroup G) where
  smoothLoopCondition : Prop
  analyticLoopCondition : Prop
  groupHomomorphismProperty : Prop
  homotopyLiftingProperty : Prop

structure LoopGroupEvidence {G : Type u} [Group G] {L : LoopGroup G} (C : LoopGroupConstruction G L) where
  smoothLoopConditionClosed : C.smoothLoopCondition
  analyticLoopConditionClosed : C.analyticLoopCondition
  groupHomomorphismPropertyClosed : C.groupHomomorphismProperty
  homotopyLiftingPropertyClosed : C.homotopyLiftingProperty

def LoopGroupClosed {G : Type u} [Group G] {L : Loop Group G} (C : LoopGroupConstruction G L) : Prop :=
  C.smoothLoopCondition ∧ C.analyticLoopCondition ∧ C.groupHomomorphismProperty ∧ C.homotopyLiftingProperty

theorem loop_group_closed_from_evidence {G : Type u} [Group G] {L : LoopGroup G} (C : LoopGroupConstruction G L) (E : LoopGroupEvidence C) : LoopGroupClosed C := by
  exact And.intro E.smoothLoopConditionClosed (And.intro E.analyticLoopConditionClosed (And.intro E.groupHomomorphismPropertyClosed E.homotopyLiftingPropertyClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse