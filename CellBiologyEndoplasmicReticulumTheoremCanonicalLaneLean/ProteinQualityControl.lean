import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ProteinQualityControlPackage where
  calnexinCycle : Type
  edem1 : Type
  erManI : Type
  erAssociatedDegradation : Type
  glycosylation : Type
  lectinChaperones : Prop
  mannosidaseCleavage : Prop
  retrotranslocation : Prop
  proteasomalDegradation : Prop
  qualityControlCheckpoint : Prop
  lectinChaperonesTerm : lectinChaperones
  mannosidaseCleavageTerm : mannosidaseCleavage
  retrotranslocationTerm : retrotranslocation
  proteasomalDegradationTerm : proteasomalDegradation
  qualityControlCheckpointTerm : qualityControlCheckpoint

structure ProteinQualityControlEvidence (Q : ProteinQualityControlPackage) where
  lectinChaperonesClosed : Q.lectinChaperones
  mannosidaseCleavageClosed : Q.mannosidaseCleavage
  retrotranslocationClosed : Q.retrotranslocation
  proteasomalDegradationClosed : Q.proteasomalDegradation
  qualityControlCheckpointClosed : Q.qualityControlCheckpoint

def ProteinQualityControlClosed (Q : ProteinQualityControlPackage) : Prop :=
  Q.lectinChaperones ∧ Q.mannosidaseCleavage ∧ Q.retrotranslocation ∧ Q.proteasomalDegradation ∧ Q.qualityControlCheckpoint

theorem protein_quality_control_closed_from_evidence (Q : ProteinQualityControlPackage) (E : ProteinQualityControlEvidence Q) : ProteinQualityControlClosed Q := by
  exact And.intro E.lectinChaperonesClosed (And.intro E.mannosidaseCleavageClosed (And.intro E.retrotranslocationClosed (And.intro E.proteasomalDegradationClosed E.qualityControlCheckpointClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse