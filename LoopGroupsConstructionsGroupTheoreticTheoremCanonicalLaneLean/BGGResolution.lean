import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure BGGResolution where
  lieAlgebra : Type u
  representation : Type v
  chainComplex : Type w
  differential : Type x
  exactness : Prop
  freeResolutions : Prop
  cohomologyVanishing : Prop

structure BGGResolutionEvidence (R : BGGResolution) where
  exactnessClosed : R.exactness
  freeResolutionsClosed : R.freeResolutions
  cohomologyVanishingClosed : R.cohomologyVanishing

def BGGResolutionClosed (R : BGGResolution) : Prop :=
  R.exactness ∧ R.freeResolutions ∧ R.cohomologyVanishing

theorem bgg_resolution_closed_from_evidence (R : BGGResolution) (E : BGGResolutionEvidence R) : BGGResolutionClosed R := by
  exact And.intro E.exactnessClosed (And.intro E.freeResolutionsClosed E.cohomologyVanishingClosed)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse