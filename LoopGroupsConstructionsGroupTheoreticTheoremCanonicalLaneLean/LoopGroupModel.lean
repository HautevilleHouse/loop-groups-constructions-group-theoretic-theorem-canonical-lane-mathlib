import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroupPackage where
  group : Type u
  loopSpace : Type v
  groupLaw : Prop
  loopMultiplication : Prop
  loopInversion : Prop
  smoothStructure : Prop
  groupLawTerm : groupLaw
  loopMultiplicationTerm : loopMultiplication
  loopInversionTerm : loopInversion
  smoothStructureTerm : smoothStructure

structure LoopGroupEvidence (P : LoopGroupPackage) where
  groupLawClosed : P.groupLaw
  loopMultiplicationClosed : P.loopMultiplication
  loopInversionClosed : P.loopInversion
  smoothStructureClosed : P.smoothStructure

def LoopGroupClosed (P : LoopGroupPackage) : Prop :=
  P.groupLaw ∧ P.loopMultiplication ∧ P.loopInversion ∧ P.smoothStructure

theorem loop_group_closed_from_evidence (P : LoopGroupPackage)
    (E : LoopGroupEvidence P) : LoopGroupClosed P := by
  exact And.intro E.groupLawClosed
    (And.intro E.loopMultiplicationClosed
      (And.intro E.loopInversionClosed E.smoothStructureClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse