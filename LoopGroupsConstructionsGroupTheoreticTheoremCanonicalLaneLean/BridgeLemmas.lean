import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LoopGroupsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse
