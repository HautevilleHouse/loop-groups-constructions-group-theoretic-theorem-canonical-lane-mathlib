import canonicalLaneMathlib.AdmissibleClass

/-!
# Pool Algebra Package
-/

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure PoolAlgebraPackage where
  groupType : Type u
  fieldType : Type v
  groupAlgebra : Type w
  multiplication : groupAlgebra → groupAlgebra → groupAlgebra
  associativity : Prop
  unitElement : groupAlgebra
  unitLaw : Prop
  involution : groupAlgebra → groupAlgebra
  involutionAntiAutomorphism : Prop
  positivityCone : Prop

structure PoolAlgebraEvidence (P : PoolAlgebraPackage) where
  associativityClosed : P.associativity
  unitLawClosed : P.unitLaw
  involutionAntiAutomorphismClosed : P.involutionAntiAutomorphism
  positivityConeClosed : P.positivityCone

def PoolAlgebraClosed (P : PoolAlgebraPackage) : Prop :=
  P.associativity ∧ P.unitLaw ∧
  P.involutionAntiAutomorphism ∧ P.positivityCone

theorem pool_algebra_closed_from_evidence (P : PoolAlgebraPackage)
    (E : PoolAlgebraEvidence P) : PoolAlgebraClosed P := by
  exact And.intro E.associativityClosed
    (And.intro E.unitLawClosed
      (And.intro E.involutionAntiAutomorphismClosed E.positivityConeClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse