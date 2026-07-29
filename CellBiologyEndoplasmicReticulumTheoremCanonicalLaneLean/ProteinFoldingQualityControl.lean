import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ProteinFoldingQualityControl where
  chaperone_network : Prop
  disulfide_isomerase : Prop
  calnexin_calreticulin_cycle : Prop
  ERAD_pathway : Prop
  misfolded_recognition : Prop
  retrotranslocation : Prop

structure ProteinFoldingQualityControlEvidence (P : ProteinFoldingQualityControl) where
  chaperone_networkClosed : P.chaperone_network
  disulfide_isomeraseClosed : P.disulfide_isomerase
  calnexin_calreticulin_cycleClosed : P.calnexin_calreticulin_cycle
  ERAD_pathwayClosed : P.ERAD_pathway
  misfolded_recognitionClosed : P.misfolded_recognition
  retrotranslocationClosed : P.retrotranslocation

def ProteinFoldingQualityControlClosed (P : ProteinFoldingQualityControl) : Prop :=
  P.chaperone_network ∧ P.disulfide_isomerase ∧
  P.calnexin_calreticulin_cycle ∧ P.ERAD_pathway ∧
  P.misfolded_recognition ∧ P.retrotranslocation

theorem protein_folding_quality_control_closed_from_evidence
    (P : ProteinFoldingQualityControl) (E : ProteinFoldingQualityControlEvidence P) :
    ProteinFoldingQualityControlClosed P := by
  exact And.intro E.chaperone_networkClosed
    (And.intro E.disulfide_isomeraseClosed
      (And.intro E.calnexin_calreticulin_cycleClosed
        (And.intro E.ERAD_pathwayClosed
          (And.intro E.misfolded_recognitionClosed E.retrotranslocationClosed))))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse