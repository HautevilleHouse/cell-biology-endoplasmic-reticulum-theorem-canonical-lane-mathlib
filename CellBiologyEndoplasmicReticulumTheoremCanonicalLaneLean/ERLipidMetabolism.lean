import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

struct ERLipidMetabolismPackage where
  phospholipidSynthesis : Prop
  sterolBiosynthesis : Prop
  lipidDropletFormation : Prop
  fattyAcidElongation : Prop
  membraneLipidRemodeling : Prop

struct ERLipidMetabolismEvidence (P : ERLipidMetabolismPackage) where
  phospholipidSynthesisClosed : P.phospholipidSynthesis
  sterolBiosynthesisClosed : P.sterolBiosynthesis
  lipidDropletFormationClosed : P.lipidDropletFormation
  fattyAcidElongationClosed : P.fattyAcidElongation
  membraneLipidRemodelingClosed : P.membraneLipidRemodeling

def ERLipidMetabolismClosed (P : ERLipidMetabolismPackage) : Prop :=
  P.phospholipidSynthesis ∧ P.sterolBiosynthesis ∧
  P.lipidDropletFormation ∧ P.fattyAcidElongation ∧ P.membraneLipidRemodeling

theorem ERLipidMetabolismClosedFromEvidence (P : ERLipidMetabolismPackage)
    (E : ERLipidMetabolismEvidence P) : ERLipidMetabolismClosed P := by
  exact And.intro E.phospholipidSynthesisClosed
    (And.intro E.sterolBiosynthesisClosed
      (And.intro E.lipidDropletFormationClosed
        (And.intro E.fattyAcidElongationClosed E.membraneLipidRemodelingClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse