import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure CentralExtension {G : Type u} [Group G] where
  underlyingGroup : Group G
  extensionGroup : Type v
  extensionGroupGroup : Group extensionGroup
  projection : extensionGroup → G
  kernel : Subgroup extensionGroup
  kernelCentral : Prop
  cocycle : G → G → kernel
  cocycleCondition : Prop

def CentralExtensionClosed {G : Type u} [Group G] (E : CentralExtension G) : Prop :=
  E.kernelCentral ∧ E.cocycleCondition

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse