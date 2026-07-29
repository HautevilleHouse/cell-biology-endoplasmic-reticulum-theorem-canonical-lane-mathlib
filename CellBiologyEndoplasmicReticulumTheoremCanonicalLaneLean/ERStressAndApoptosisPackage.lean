import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERStressAndApoptosisPackage where
  ire1Pathway : Prop
  perkPathway : Prop
  atf6Pathway : Prop
  chopActivation : Prop
  apoptosisRegulation : Prop

structure ERStressAndApoptosisEvidence (S : ERStressAndApoptosisPackage) where
  ire1PathwayClosed : S.ire1Pathway
  perkPathwayClosed : S.perkPathway
  atf6PathwayClosed : S.atf6Pathway
  chopActivationClosed : S.chopActivation
  apoptosisRegulationClosed : S.apoptosisRegulation

def ERStressAndApoptosisClosed (S : ERStressAndApoptosisPackage) : Prop :=
  S.ire1Pathway ∧ S.perkPathway ∧ S.atf6Pathway ∧
  S.chopActivation ∧ S.apoptosisRegulation

theorem er_stress_and_apoptosis_closed_from_evidence
    (S : ERStressAndApoptosisPackage)
    (E : ERStressAndApoptosisEvidence S) :
    ERStressAndApoptosisClosed S := by
  exact And.intro E.ire1PathwayClosed
    (And.intro E.perkPathwayClosed
      (And.intro E.atf6PathwayClosed
        (And.intro E.chopActivationClosed E.apoptosisRegulationClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse