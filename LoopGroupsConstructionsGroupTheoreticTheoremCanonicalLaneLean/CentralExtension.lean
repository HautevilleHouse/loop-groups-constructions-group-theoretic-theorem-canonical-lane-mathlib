import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure CentralExtensionPackage where
  group : Type u
  centralExtension : Type v
  cocycleCondition : Prop
  groupLaw : Prop
  extensionLaw : Prop
  cocycleConditionTerm : cocycleCondition
  groupLawTerm : groupLaw
  extensionLawTerm : extensionLaw

structure CentralExtensionEvidence (P : CentralExtensionPackage) where
  cocycleConditionClosed : P.cocycleCondition
  groupLawClosed : P.groupLaw
  extensionLawClosed : P.extensionLaw

def CentralExtensionClosed (P : CentralExtensionPackage) : Prop :=
  P.cocycleCondition ∧ P.groupLaw ∧ P.extensionLaw

theorem central_extension_closed_from_evidence (P : CentralExtensionPackage)
    (E : CentralExtensionEvidence P) : CentralExtensionClosed P := by
  exact And.intro E.cocycleConditionClosed
    (And.intro E.groupLawClosed E.extensionLawClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse