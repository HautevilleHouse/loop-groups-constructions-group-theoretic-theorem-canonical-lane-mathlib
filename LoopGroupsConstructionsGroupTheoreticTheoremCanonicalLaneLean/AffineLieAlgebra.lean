import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean

structure AffineLieAlgebra (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  loopAlgebra : Type u
  lieRing : LieRing loopAlgebra
  lieAlgebra : LieAlgebra ℝ loopAlgebra
  centralExtension : LieAlgebraExtension ℝ (𝔤 ⊗ ℝ ℝ[t, t⁻¹]) ℝ
  cocycle : loopAlgebra → loopAlgebra → ℝ
  cocycleBilinear : BilinearMap ℝ loopAlgebra ℝ
  cocycleSkewSymmetric : ∀ (x y : loopAlgebra), cocycle x y = -cocycle y x
  cocycleJacobi : ∀ (x y z : loopAlgebra), cocycle x [y, z] + cocycle y [z, x] + cocycle z [x, y] = 0
  cocycleContinuous : Continuous (λ (p : loopAlgebra × loopAlgebra) => cocycle p.1 p.2)

def AffineLieAlgebra.centralExtensionLieAlgebra (𝔤 : Type u) [LieRing 𝔤] [LieAlgebra ℝ 𝔤]
  (A : AffineLieAlgebra 𝔤) : LieAlgebra ℝ (A.loopAlgebra × ℝ) where
  bracket := λ (x, r) (y, s) => (([x.1, y.1], A.cocycle x.1 y.1), 0)
  add_comm := by
    intro x y
    ext <;> simp [add_comm]
  add_left_neg := by
    intro x
    ext <;> simp
  mul_smul := by
    intro t x y
    ext <;> simp [smul_add, add_smul, smul_smul]
  add_smul := by
    intro t x y
    ext <;> simp [add_smul, smul_add]
  smul_add := by
    intro t x y
    ext <;> simp [smul_add]
  leibniz_lie := by
    intro x y z
    ext <;> simp [LieRing.of_associative_ring_bracket, sub_eq_add_neg, add_assoc]

end LoopGroupsConstructionsGroupTheoreticTheoremCanonicalLaneLean
end HautevilleHouse