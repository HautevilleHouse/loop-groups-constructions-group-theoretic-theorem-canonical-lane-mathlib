import canonicalLaneMathlib.AdmissibleClass

/-!
# Central Extension Package
-/

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure CentralExtensionPackage where
  loopGroupType : Type u
  centralExtension : Type v
  cocycle : (loopGroupType × loopGroupType) → ℝ
  cocycleSkewSymmetric : Prop
  cocycleAdditive : Prop
  extensionGroupLaw : Prop
  extensionExactSequence : Prop

structure CentralExtensionEvidence (C : CentralExtensionPackage) where
  cocycleSkewSymmetricClosed : C.cocycleSkewSymmetric
  cocycleAdditiveClosed : C.cocycleAdditive
  extensionGroupLawClosed : C.extensionGroupLaw
  extensionExactSequenceClosed : C.extensionExactSequence

def CentralExtensionClosed (C : CentralExtensionPackage) : Prop :=
  C.cocycleSkewSymmetric ∧ C.cocycleAdditive ∧
  C.extensionGroupLaw ∧ C.extensionExactSequence

theorem central_extension_closed_from_evidence (C : CentralExtensionPackage)
    (E : CentralExtensionEvidence C) : CentralExtensionClosed C := by
  exact And.intro E.cocycleSkewSymmetricClosed
    (And.intro E.cocycleAdditiveClosed
      (And.intro E.extensionGroupLawClosed E.extensionExactSequenceClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse