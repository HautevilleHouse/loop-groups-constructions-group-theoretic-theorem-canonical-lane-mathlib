import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LevelRepresentationPackage where
  group : Type u
  level : Type v
  representation : Type w
  groupAction : Prop
  intertwiner : Prop
  positivityCondition : Prop
  groupActionTerm : groupAction
  intertwinerTerm : intertwiner
  positivityConditionTerm : positivityCondition

structure LevelRepresentationEvidence (P : LevelRepresentationPackage) where
  groupActionClosed : P.groupAction
  intertwinerClosed : P.intertwiner
  positivityConditionClosed : P.positivityCondition

def LevelRepresentationClosed (P : LevelRepresentationPackage) : Prop :=
  P.groupAction ∧ P.intertwiner ∧ P.positivityCondition

theorem level_representation_closed_from_evidence (P : LevelRepresentationPackage)
    (E : LevelRepresentationEvidence P) : LevelRepresentationClosed P := by
  exact And.intro E.groupActionClosed
    (And.intro E.intertwinerClosed E.positivityConditionClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse