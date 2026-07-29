import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERMembraneStructure where
  carrier : Type u
  topology : TopologicalSpace carrier
  membraneComposition : Prop
  luminalSpace : Prop
  membraneContinuity : Prop

structure ERMembraneEvidence (M : ERMembraneStructure) where
  membraneCompositionClosed : M.membraneComposition
  luminalSpaceClosed : M.luminalSpace
  membraneContinuityClosed : M.membraneContinuity

def ERMembraneClosed (M : ERMembraneStructure) : Prop :=
  M.membraneComposition ∧ M.luminalSpace ∧ M.membraneContinuity

theorem ER_membrane_closed_from_evidence (M : ERMembraneStructure)
    (E : ERMembraneEvidence M) : ERMembraneClosed M := by
  exact And.intro E.membraneCompositionClosed
    (And.intro E.luminalSpaceClosed E.membraneContinuityClosed)

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse