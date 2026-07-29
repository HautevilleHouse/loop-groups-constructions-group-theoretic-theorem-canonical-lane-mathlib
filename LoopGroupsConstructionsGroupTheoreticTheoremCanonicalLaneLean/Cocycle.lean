import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure Cocycle (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) where
  ω : LG.carrier × LG.carrier → ℝ
  continuous : Continuous ω
  cocycleCondition : ∀ (γ₁ γ₂ γ₃ : LG.carrier), ω(γ₁, γ₂) + ω(γ₁*γ₂, γ₃) = ω(γ₂, γ₃) + ω(γ₁, γ₂*γ₃)
  normalization : ω(1,1) = 0

def Cocycle.trivial (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) : Cocycle G LG where
  ω := λ _ => 0
  continuous := continuous_const
  cocycleCondition := λ _ _ _ => by simp
  normalization := rfl

theorem cocycle_continuous_at_identity (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G]
  (LG : LoopGroup G) (c : Cocycle G LG) : ContinuousAt (λ (γ : LG.carrier) => c.ω(γ, γ⁻¹)) 1 := by
  exact c.continuous.continuousAt.comp (continuousAt_fst.mul continuousAt_snd)

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse