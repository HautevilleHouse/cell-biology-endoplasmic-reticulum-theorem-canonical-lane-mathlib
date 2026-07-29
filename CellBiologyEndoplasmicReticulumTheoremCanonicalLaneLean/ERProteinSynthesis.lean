import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERTranslocationMachinery where
  transloconComplex : Prop
  signalRecognitionParticle : Prop
  SRPReceptor : Prop
  translocationPore : Prop
  signalPeptidase : Prop
  transloconComplexClosed : transloconComplex
  signalRecognitionParticleClosed : signalRecognitionParticle
  SRPReceptorClosed : SRPReceptor
  translocationPoreClosed : translocationPore
  signalPeptidaseClosed : signalPeptidase

structure ERProteinSynthesisPackage where
  translocation : ERTranslocationMachinery
  cotranslationalInsertion : Prop
  glycosylationInitiation : Prop
  proteinFolding : Prop
  qualityControl : Prop
  cotranslationalInsertionClosed : cotranslationalInsertion
  glycosylationInitiationClosed : glycosylationInitiation
  proteinFoldingClosed : proteinFolding
  qualityControlClosed : qualityControl

def ERProteinSynthesisClosed (E : ERProteinSynthesisPackage) : Prop :=
  E.cotranslationalInsertion ∧ E.glycosylationInitiation ∧ E.proteinFolding ∧ E.qualityControl

theorem er_protein_synthesis_closed_from_evidence (E : ERProteinSynthesisPackage) (m : ERTranslocationMachinery) (h1 : E.cotranslationalInsertion) (h2 : E.glycosylationInitiation) (h3 : E.proteinFolding) (h4 : E.qualityControl) : ERProteinSynthesisClosed E := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse