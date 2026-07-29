import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERQualityControlPackage where
  unfoldedProteinResponse : Prop
  erAssociatedDegradation : Prop
  calciumHomeostasis : Prop
  lipidSynthesis : Prop

structure ERQualityControlEvidence (Q : ERQualityControlPackage) where
  unfoldedProteinResponseClosed : Q.unfoldedProteinResponse
  erAssociatedDegradationClosed : Q.erAssociatedDegradation
  calciumHomeostasisClosed : Q.calciumHomeostasis
  lipidSynthesisClosed : Q.lipidSynthesis

def ERQualityControlClosed (Q : ERQualityControlPackage) : Prop :=
  Q.unfoldedProteinResponse ∧ Q.erAssociatedDegradation ∧
  Q.calciumHomeostasis ∧ Q.lipidSynthesis

theorem er_quality_control_closed_from_evidence (Q : ERQualityControlPackage)
    (E : ERQualityControlEvidence Q) : ERQualityControlClosed Q := by
  exact And.intro E.unfoldedProteinResponseClosed
    (And.intro E.erAssociatedDegradationClosed
      (And.intro E.calciumHomeostasisClosed E.lipidSynthesisClosed))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse