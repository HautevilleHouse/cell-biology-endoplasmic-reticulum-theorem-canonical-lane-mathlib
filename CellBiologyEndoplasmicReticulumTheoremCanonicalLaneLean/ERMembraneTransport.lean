import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERMembraneTransportPackage where
  membraneComposition : Prop
  transportProteinsIdentified : Prop
  vesicleBuddingMechanism : Prop
  cargoSelection : Prop
  coatProteinRecruitment : Prop

structure ERMembraneTransportEvidence (P : ERMembraneTransportPackage) where
  membraneCompositionClosed : P.membraneComposition
  transportProteinsIdentifiedClosed : P.transportProteinsIdentified
  vesicleBuddingMechanismClosed : P.vesicleBuddingMechanism
  cargoSelectionClosed : P.cargoSelection
  coatProteinRecruitmentClosed : P.coatProteinRecruitment

def ERMembraneTransportClosed (P : ERMembraneTransportPackage) : Prop :=
  P.membraneComposition ∧ P.transportProteinsIdentified ∧
  P.vesicleBuddingMechanism ∧ P.cargoSelection ∧ P.coatProteinRecruitment

theorem ERMembraneTransportClosedFromEvidence (P : ERMembraneTransportPackage)
    (E : ERMembraneTransportEvidence P) : ERMembraneTransportClosed P := by
  exact And.intro E.membraneCompositionClosed
    (And.intro E.transportProteinsIdentifiedClosed
      (And.intro E.vesicleBuddingMechanismClosed
        (And.intro E.cargoSelectionClosed E.coatProteinRecruitmentClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse