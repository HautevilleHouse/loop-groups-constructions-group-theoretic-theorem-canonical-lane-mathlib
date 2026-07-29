import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LoopGroupsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LoopGroupsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse
