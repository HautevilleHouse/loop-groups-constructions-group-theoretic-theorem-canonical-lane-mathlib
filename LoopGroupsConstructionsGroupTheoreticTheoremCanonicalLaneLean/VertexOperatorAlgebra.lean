import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure VertexOperatorAlgebraPackage where
  voa : Type u
  stateSpace : Type v
  vacuum : Prop
  translationOperator : Prop
  vertexOperation : Prop
  locality : Prop
  vacuumTerm : vacuum
  translationOperatorTerm : translationOperator
  vertexOperationTerm : vertexOperation
  localityTerm : locality

structure VertexOperatorAlgebraEvidence (P : VertexOperatorAlgebraPackage) where
  vacuumClosed : P.vacuum
  translationOperatorClosed : P.translationOperator
  vertexOperationClosed : P.vertexOperation
  localityClosed : P.locality

def VertexOperatorAlgebraClosed (P : VertexOperatorAlgebraPackage) : Prop :=
  P.vacuum ∧ P.translationOperator ∧ P.vertexOperation ∧ P.locality

theorem vertex_operator_algebra_closed_from_evidence (P : VertexOperatorAlgebraPackage)
    (E : VertexOperatorAlgebraEvidence P) : VertexOperatorAlgebraClosed P := by
  exact And.intro E.vacuumClosed
    (And.intro E.translationOperatorClosed
      (And.intro E.vertexOperationClosed E.localityClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse