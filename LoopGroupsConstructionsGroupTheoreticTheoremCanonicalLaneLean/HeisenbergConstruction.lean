import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure HeisenbergConstruction (G : Type u) [Group G] where
  underlyingGroup : Group G
  centralExtension : CentralExtension G
  symplecticForm : Prop
  nondegenerate : Prop
  representation : Type v
  irrepClassification : Prop

structure HeisenbergEvidence (G : Type u) [Group G] (H : HeisenbergConstruction G) where
  symplecticFormClosed : H.symplecticForm
  nondegenerateClosed : H.nondegenerate
  irrepClassificationClosed : H.irrepClassification

def HeisenbergConstructionClosed (G : Type u) [Group G] (H : HeisenbergConstruction G) : Prop :=
  H.symplecticForm ∧ H.nondegenerate ∧ H.irrepClassification

theorem heisenberg_construction_closed_from_evidence (G : Type u) [Group G] (H : HeisenbergConstruction G) (E : HeisenbergEvidence G H) : HeisenbergConstructionClosed G H := by
  exact And.intro E.symplecticFormClosed (And.intro E.nondegenerateClosed E.irrepClassificationClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse