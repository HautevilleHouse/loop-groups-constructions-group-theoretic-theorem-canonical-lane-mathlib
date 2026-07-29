import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroupParameters where
  compactLieGroup : Type u
  circleParameter : Type v
  groupMorphism : compactLieGroup → (circleParameter → compactLieGroup)
  smoothness : Prop
  topologicalConsistency : Prop

def LG_parameter_space (L : LoopGroupParameters) : Prop :=
  L.smoothness ∧ L.topologicalConsistency

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse