import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure LipidSynthesis where
  phospholipid_synthesis : Prop
  cholesterol_metabolism : Prop
  ceramide_production : Prop
  lipid_droplet_formation : Prop
  membrane_expansion : Prop

structure LipidSynthesisEvidence (L : LipidSynthesis) where
  phospholipid_synthesisClosed : L.phospholipid_synthesis
  cholesterol_metabolismClosed : L.cholesterol_metabolism
  ceramide_productionClosed : L.ceramide_production
  lipid_droplet_formationClosed : L.lipid_droplet_formation
  membrane_expansionClosed : L.membrane_expansion

def LipidSynthesisClosed (L : LipidSynthesis) : Prop :=
  L.phospholipid_synthesis ∧ L.cholesterol_metabolism ∧
  L.ceramide_production ∧ L.lipid_droplet_formation ∧ L.membrane_expansion

theorem lipid_synthesis_closed_from_evidence (L : LipidSynthesis)
    (E : LipidSynthesisEvidence L) : LipidSynthesisClosed L := by
  exact And.intro E.phospholipid_synthesisClosed
    (And.intro E.cholesterol_metabolismClosed
      (And.intro E.ceramide_productionClosed
        (And.intro E.lipid_droplet_formationClosed E.membrane_expansionClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse