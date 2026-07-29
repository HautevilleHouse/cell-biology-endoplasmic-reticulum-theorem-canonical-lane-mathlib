import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERADQualityControlPackage (A : AdmissibleClass) where
  misfoldedProteinRecognition : Prop
  retrotranslocationInitiated : Prop
  ubiquitinationDegradation : Prop
  eradEvidence : misfoldedProteinRecognition ∧ retrotranslocationInitiated ∧ ubiquitinationDegradation

structure ERADQualityControlEvidence {A : AdmissibleClass} (E : ERADQualityControlPackage A) where
  misfoldedProteinRecognitionClosed : E.misfoldedProteinRecognition
  retrotranslocationInitiatedClosed : E.retrotranslocationInitiated
  ubiquitinationDegradationClosed : E.ubiquitinationDegradation

def ERADQualityControlClosed {A : AdmissibleClass} (E : ERADQualityControlPackage A) : Prop :=
  E.misfoldedProteinRecognition ∧ E.retrotranslocationInitiated ∧ E.ubiquitinationDegradation

theorem erad_quality_control_closed_from_evidence
    {A : AdmissibleClass} (E : ERADQualityControlPackage A) (Ev : ERADQualityControlEvidence E) :
    ERADQualityControlClosed E := by
  exact And.intro Ev.misfoldedProteinRecognitionClosed
    (And.intro Ev.retrotranslocationInitiatedClosed Ev.ubiquitinationDegradationClosed)

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse
