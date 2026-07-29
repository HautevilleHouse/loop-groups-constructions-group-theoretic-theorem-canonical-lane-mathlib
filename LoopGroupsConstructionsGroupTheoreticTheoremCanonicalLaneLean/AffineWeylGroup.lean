import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure AffineWeylGroup where
  rootSystem : Type u
  corootSystem : Type v
  weylGroup : Type w
  affineWeylGroup : Type x
  groupStructure : Group affineWeylGroup
  actionOnRoots : Prop
  bruhatOrder : Prop
  cohomologyRealization : Prop

structure AffineWeylGroupEvidence (W : AffineWeylGroup) where
  actionOnRootsClosed : W.actionOnRoots
  bruhatOrderClosed : W.bruhatOrder
  cohomologyRealizationClosed : W.cohomologyRealization

def AffineWeylGroupClosed (W : AffineWeylGroup) : Prop :=
  W.actionOnRoots ∧ W.bruhatOrder ∧ W.cohomologyRealization

theorem affine_weyl_group_closed_from_evidence (W : AffineWeylGroup) (E : AffineWeylGroupEvidence W) : AffineWeylGroupClosed W := by
  exact And.intro E.actionOnRootsClosed (And.intro E.bruhatOrderClosed E.cohomologyRealizationClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse