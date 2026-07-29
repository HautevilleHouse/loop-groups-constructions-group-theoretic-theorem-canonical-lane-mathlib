import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroup (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] where
  carrier : Type u
  group : Group carrier
  topology : TopologicalSpace carrier
  topologicalGroup : TopologicalGroup carrier
  evaluationMap : carrier → G
  evaluationContinuous : Continuous evaluationMap
  groupHomomorphy : ∀ (γ₁ γ₂ : carrier), evaluationMap (γ₁ * γ₂) = evaluationMap γ₁ * evaluationMap γ₂

def LoopGroup.identity (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] : LoopGroup G where
  carrier := G
  group := inferInstance
  topology := inferInstance
  topologicalGroup := inferInstance
  evaluationMap := id
  evaluationContinuous := continuous_id
  groupHomomorphy := λ _ _ => rfl

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse