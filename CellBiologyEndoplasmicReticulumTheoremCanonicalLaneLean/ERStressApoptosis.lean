import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERStressApoptosisPackage where
  calciumHomeostasis : Prop
  oxidativeStressResponse : Prop
  CHOPUpregulation : Prop
  caspaseActivation : Prop
  Bcl2FamilyRegulation : Prop

structure ERStressApoptosisEvidence (P : ERStressApoptosisPackage) where
  calciumHomeostasisClosed : P.calciumHomeostasis
  oxidativeStressResponseClosed : P.oxidativeStressResponse
  CHOPUpregulationClosed : P.CHOPUpregulation
  caspaseActivationClosed : P.caspaseActivation
  Bcl2FamilyRegulationClosed : P.Bcl2FamilyRegulation

def ERStressApoptosisClosed (P : ERStressApoptosisPackage) : Prop :=
  P.calciumHomeostasis ∧ P.oxidativeStressResponse ∧
  P.CHOPUpregulation ∧ P.caspaseActivation ∧ P.Bcl2FamilyRegulation

theorem ERStressApoptosisClosedFromEvidence (P : ERStressApoptosisPackage)
    (E : ERStressApoptosisEvidence P) : ERStressApoptosisClosed P := by
  exact And.intro E.calciumHomeostasisClosed
    (And.intro E.oxidativeStressResponseClosed
      (And.intro E.CHOPUpregulationClosed
        (And.intro E.caspaseActivationClosed E.Bcl2FamilyRegulationClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse