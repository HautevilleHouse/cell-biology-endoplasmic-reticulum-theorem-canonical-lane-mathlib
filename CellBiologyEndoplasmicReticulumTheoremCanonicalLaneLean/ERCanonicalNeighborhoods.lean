import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERCanonicalNeighborhoodsPackage {S : ERStressPackage} {U : UnfoldedProteinResponsePackage S} (C : ERMembraneContactPackage U) where
  sheetRegionsCovered : Prop
  tubuleDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderStress : Prop

structure ERCanonicalNeighborhoodsEvidence {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    (P : ERCanonicalNeighborhoodsPackage C) where
  sheetRegionsCoveredClosed : P.sheetRegionsCovered
  tubuleDecompositionClosed : P.tubuleDecomposition
  scaleCompatibilityClosed : P.scaleCompatibility
  persistenceUnderStressClosed : P.persistenceUnderStress

def ERCanonicalNeighborhoodsClosed {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    (P : ERCanonicalNeighborhoodsPackage C) : Prop :=
  P.sheetRegionsCovered ∧ P.tubuleDecomposition ∧
  P.scaleCompatibility ∧ P.persistenceUnderStress

theorem er_canonical_neighborhoods_closed_from_evidence
    {S : ERStressPackage} {U : UnfoldedProteinResponsePackage S}
    {C : ERMembraneContactPackage U} (P : ERCanonicalNeighborhoodsPackage C)
    (E : ERCanonicalNeighborhoodsEvidence P) : ERCanonicalNeighborhoodsClosed P := by
  exact And.intro E.sheetRegionsCoveredClosed
    (And.intro E.tubuleDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderStressClosed))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse