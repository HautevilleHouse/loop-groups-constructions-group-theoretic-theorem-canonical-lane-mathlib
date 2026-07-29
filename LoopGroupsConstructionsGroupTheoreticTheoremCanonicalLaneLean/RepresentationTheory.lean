import canonicalLaneMathlib.AdmissibleClass

/-!
# Representation Theory Package
-/

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure RepresentationTheoryPackage where
  loopGroupType : Type u
  hilbertSpace : Type v
  representation : loopGroupType → (hilbertSpace → hilbertSpace)
  continuity : Prop
  unitarity : Prop
  irreducibility : Prop
  intertwiners : Prop

structure RepresentationTheoryEvidence (R : RepresentationTheoryPackage) where
  continuityClosed : R.continuity
  unitarityClosed : R.unitarity
  irreducibilityClosed : R.irreducibility
  intertwinersClosed : R.intertwiners

def RepresentationTheoryClosed (R : RepresentationTheoryPackage) : Prop :=
  R.continuity ∧ R.unitarity ∧
  R.irreducibility ∧ R.intertwiners

theorem representation_theory_closed_from_evidence (R : RepresentationTheoryPackage)
    (E : RepresentationTheoryEvidence R) : RepresentationTheoryClosed R := by
  exact And.intro E.continuityClosed
    (And.intro E.unitarityClosed
      (And.intro E.irreducibilityClosed E.intertwinersClosed))

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse