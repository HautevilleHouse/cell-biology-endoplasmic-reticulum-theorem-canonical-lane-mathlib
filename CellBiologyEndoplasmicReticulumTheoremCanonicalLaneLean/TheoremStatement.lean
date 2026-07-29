import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceERTheoremStatement : ERTheoremStatement := {
  sourceKey := "cell-biology-endoplasmic-reticulum-canonical-lane",
  theoremName := "Endoplasmic Reticulum Theorem",
  theoremObject := "Endoplasmic Reticulum Admissible Object",
  classicalBoundary := "unrestricted classical closure remains carried",
  constrainedStatement := "admissible-class constrained theorem certificate",
  certificateLane := "ER_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

theorem theorem_statement_source_key_checked :
    sourceERTheoremStatement.sourceKey = "cell-biology-endoplasmic-reticulum-canonical-lane" := by
  rfl

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse