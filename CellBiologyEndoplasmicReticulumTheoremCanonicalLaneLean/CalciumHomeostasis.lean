import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure CalciumHomeostasis where
  SERCA_pump : Prop
  IP3_receptor : Prop
  ryanodine_receptor : Prop
  calcium_storage : Prop
  calcium_release : Prop
  mitochondrial_coupling : Prop

structure CalciumHomeostasisEvidence (C : CalciumHomeostasis) where
  SERCA_pumpClosed : C.SERCA_pump
  IP3_receptorClosed : C.IP3_receptor
  ryanodine_receptorClosed : C.ryanodine_receptor
  calcium_storageClosed : C.calcium_storage
  calcium_releaseClosed : C.calcium_release
  mitochondrial_couplingClosed : C.mitochondrial_coupling

def CalciumHomeostasisClosed (C : CalciumHomeostasis) : Prop :=
  C.SERCA_pump ∧ C.IP3_receptor ∧ C.ryanodine_receptor ∧
  C.calcium_storage ∧ C.calcium_release ∧ C.mitochondrial_coupling

theorem calcium_homeostasis_closed_from_evidence
    (C : CalciumHomeostasis) (E : CalciumHomeostasisEvidence C) :
    CalciumHomeostasisClosed C := by
  exact And.intro E.SERCA_pumpClosed
    (And.intro E.IP3_receptorClosed
      (And.intro E.ryanodine_receptorClosed
        (And.intro E.calcium_storageClosed
          (And.intro E.calcium_releaseClosed E.mitochondrial_couplingClosed))))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse