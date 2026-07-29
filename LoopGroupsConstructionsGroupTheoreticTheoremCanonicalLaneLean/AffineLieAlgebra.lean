import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure AffineLieAlgebraPackage where
  underlyingAlgebra : Type u
  centralExtension : Type v
  lieBracket : Prop
  jacobiIdentity : Prop
  centreRelation : Prop
  lieBracketTerm : lieBracket
  jacobiIdentityTerm : jacobiIdentity
  centreRelationTerm : centreRelation

structure AffineLieAlgebraEvidence (P : AffineLieAlgebraPackage) where
  lieBracketClosed : P.lieBracket
  jacobiIdentityClosed : P.jacobiIdentity
  centreRelationClosed : P.centreRelation

def AffineLieAlgebraClosed (P : AffineLieAlgebraPackage) : Prop :=
  P.lieBracket ∧ P.jacobiIdentity ∧ P.centreRelation

theorem affine_lie_algebra_closed_from_evidence (P : AffineLieAlgebraPackage)
    (E : AffineLieAlgebraEvidence P) : AffineLieAlgebraClosed P := by
  exact And.intro E.lieBracketClosed
    (And.intro E.jacobiIdentityClosed E.centreRelationClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse