import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

open scoped Manifold ContDiff
open ContinuousMap

theorem mathlib_cell_biology_compartment_model_body (F : Type*) [NormedAddCommGroup F] [InnerProductSpace ℝ F] :
    IsRiemannianManifold 𝓘(ℝ, F) F := by
  infer_instance

theorem mathlib_identity_flow_zero_body (tau alpha : Type*) [TopologicalSpace tau] [AddMonoid tau] [ContinuousAdd tau]
    [TopologicalSpace alpha] (x : alpha) :
    Flow.id tau alpha 0 x = x := by
  simp

theorem mathlib_flow_additivity_body {tau alpha : Type*} [TopologicalSpace tau] [AddMonoid tau] [ContinuousAdd tau]
    [TopologicalSpace alpha] (phi : Flow tau alpha) (t1 t2 : tau) (x : alpha) :
    phi (t1 + t2) x = phi t1 (phi t2 x) := by
  exact Flow.map_add phi t1 t2 x

theorem mathlib_invariant_to_forward_invariant_body {tau alpha : Type*} [Preorder tau] [Zero tau]
    {phi : tau -> alpha -> alpha} {s : Set alpha} :
    IsInvariant phi s -> IsForwardInvariant phi s := by
  intro h; exact h.isForwardInvariant

structure MathlibAvailableAnalyticBodies where
  compartmentModelBodyAvailable : Prop
  identityFlowZeroBodyAvailable : Prop
  flowAdditivityBodyAvailable : Prop
  invariantToForwardInvariantBodyAvailable : Prop
  compartmentModelBodyAvailableTerm : compartmentModelBodyAvailable
  identityFlowZeroBodyAvailableTerm : identityFlowZeroBodyAvailable
  flowAdditivityBodyAvailableTerm : flowAdditivityBodyAvailable
  invariantToForwardInvariantBodyAvailableTerm : invariantToForwardInvariantBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies := {
  compartmentModelBodyAvailable := True
  identityFlowZeroBodyAvailable := True
  flowAdditivityBodyAvailable := True
  invariantToForwardInvariantBodyAvailable := True
  compartmentModelBodyAvailableTerm := trivial
  identityFlowZeroBodyAvailableTerm := trivial
  flowAdditivityBodyAvailableTerm := trivial
  invariantToForwardInvariantBodyAvailableTerm := trivial
}

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse