import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure CentralExtension (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) where
  extensionGroup : Type u
  group : Group extensionGroup
  topology : TopologicalSpace extensionGroup
  topologicalGroup : TopologicalGroup extensionGroup
  projection : extensionGroup → LG.carrier
  kernel : Subgroup extensionGroup
  kernelIsOneDimensional : kernel ≃ ℝ
  projectionContinuous : Continuous projection
  projectionSurjective : Function.Surjective projection
  kernelCentral : kernel ≤ Subgroup.center extensionGroup

def CentralExtension.trivial (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) : CentralExtension G LG where
  extensionGroup := LG.carrier
  group := LG.group
  topology := LG.topology
  topologicalGroup := LG.topologicalGroup
  projection := id
  kernel := ⊥
  kernelIsOneDimensional := {
    toFun := λ x => 0
    invFun := λ _ => 1
    left_inv := by intro x; apply Subgroup.mem_bot.mp x.property
    right_inv := by intro r; exact Subtype.ext rfl
    map_add' := λ x y => rfl
  }
  projectionContinuous := continuous_id
  projectionSurjective := λ x => ⟨x, rfl⟩
  kernelCentral := λ g h => by
    rcases h with ⟨h, hh⟩
    exact Subtype.ext (mul_comm h g)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse