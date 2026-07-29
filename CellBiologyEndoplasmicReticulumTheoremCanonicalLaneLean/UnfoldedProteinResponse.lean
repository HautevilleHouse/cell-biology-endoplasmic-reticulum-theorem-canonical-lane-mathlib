import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure UnfoldedProteinResponsePackage (A : AdmissibleClass) where
  erStressSensed : Prop
  atf6PathwayActivated : Prop
  ire1SplicingActive : Prop
  perkTranslationArrest : Prop
  uprEvidence : erStressSensed ∧ atf6PathwayActivated ∧ ire1SplicingActive ∧ perkTranslationArrest

structure UnfoldedProteinResponseEvidence {A : AdmissibleClass} (U : UnfoldedProteinResponsePackage A) where
  erStressSensedClosed : U.erStressSensed
  atf6PathwayActivatedClosed : U.atf6PathwayActivated
  ire1SplicingActiveClosed : U.ire1SplicingActive
  perkTranslationArrestClosed : U.perkTranslationArrest

def UnfoldedProteinResponseClosed {A : AdmissibleClass} (U : UnfoldedProteinResponsePackage A) : Prop :=
  U.erStressSensed ∧ U.atf6PathwayActivated ∧ U.ire1SplicingActive ∧ U.perkTranslationArrest

theorem unfolded_protein_response_closed_from_evidence
    {A : AdmissibleClass} (U : UnfoldedProteinResponsePackage A) (E : UnfoldedProteinResponseEvidence U) :
    UnfoldedProteinResponseClosed U := by
  exact And.intro E.erStressSensedClosed
    (And.intro E.atf6PathwayActivatedClosed
      (And.intro E.ire1SplicingActiveClosed E.perkTranslationArrestClosed))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse
