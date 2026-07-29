import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure LoopGroupRepresentation (G : Type u) [Group G] (L : LoopGroup G) (V : Type v) [AddCommGroup V] where
  actionMap : L.carrier → (V → V)
  actionLinear : ∀ (l : L.carrier), LinearMap (actionMap l)
  actionCompatibleWithLoopMul : Prop
  actionContinuous : Prop

structure RepresentationConstruction {G : Type u} [Group G] {L : LoopGroup G} {V : Type v} [AddCommGroup V] (R : LoopGroupRepresentation G L V) where
  irreducibleDecomposition : Prop
  characterFormula : Prop
  unitaryStructure : Prop

structure RepresentationEvidence {G : Type u} [Group G] {L : LoopGroup G} {V : Type v} [AddCommGroup V] {R : LoopGroupRepresentation G L V} (C : RepresentationConstruction R) where
  irreducibleDecompositionClosed : C.irreducibleDecomposition
  characterFormulaClosed : C.characterFormula
  unitaryStructureClosed : C.unitaryStructure

def RepresentationClosed {G : Type u} [Group G] {L : LoopGroup G} {V : Type v} [AddCommGroup V] {R : LoopGroupRepresentation G L V} (C : RepresentationConstruction R) : Prop :=
  C.irreducibleDecomposition ∧ C.characterFormula ∧ C.unitaryStructure

theorem representation_closed_from_evidence {G : Type u} [Group G] {L : LoopGroup G} {V : Type v} [AddCommGroup V] {R : LoopGroupRepresentation G L V} (C : RepresentationConstruction R) (E : RepresentationEvidence C) : RepresentationClosed C := by
  exact And.intro E.irreducibleDecompositionClosed (And.intro E.characterFormulaClosed E.unitaryStructureClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse