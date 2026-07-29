import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure Representation (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) (V : Type v) [NormedAddCommGroup V] [NormedSpace ℝ V] where
  π : LG.carrier → (V →L[ℝ] V)
  continuous : Continuous π
  homomorphismProperty : ∀ (γ₁ γ₂ : LG.carrier), π (γ₁ * γ₂) = (π γ₁).comp (π γ₂)
  identity : π 1 = ContinuousLinearMap.id ℝ V

def Representation.trivial (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) (V : Type v) [NormedAddCommGroup V] [NormedSpace ℝ V] :
  Representation G LG V where
  π := λ _ => ContinuousLinearMap.id ℝ V
  continuous := continuous_const
  homomorphismProperty := λ _ _ => rfl
  identity := rfl

theorem representation_evaluation_at_identity (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) (V : Type v) [NormedAddCommGroup V] [NormedSpace ℝ V]
  (ρ : Representation G LG V) (v : V) : ρ.π 1 v = v := by
  simpa [ρ.identity] using rfl

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse