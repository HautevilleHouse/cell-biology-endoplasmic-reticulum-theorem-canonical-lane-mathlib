import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERGeometrizationPackage {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    (G : ERQualityControlPackage C) where
  membraneContactSiteClassification : Prop
  erSheetFormation : Prop
  tubuleNetworkMorphology : Prop
  stressInducedRemodeling : Prop

structure ERGeometrizationEvidence {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    {G : ERQualityControlPackage C} (Z : ERGeometrizationPackage G) where
  membraneContactSiteClassificationClosed : Z.membraneContactSiteClassification
  erSheetFormationClosed : Z.erSheetFormation
  tubuleNetworkMorphologyClosed : Z.tubuleNetworkMorphology
  stressInducedRemodelingClosed : Z.stressInducedRemodeling

def ERGeometrizationClosed {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    {G : ERQualityControlPackage C} (Z : ERGeometrizationPackage G) : Prop :=
  Z.membraneContactSiteClassification ∧ Z.erSheetFormation ∧
  Z.tubuleNetworkMorphology ∧ Z.stressInducedRemodeling

theorem er_geometrization_closed_from_evidence
    {S : ERStressPackage} {U : UnfoldedProteinResponsePackage S}
    {C : ERMembraneContactPackage U} {G : ERQualityControlPackage C}
    (Z : ERGeometrizationPackage G) (E : ERGeometrizationEvidence Z) :
    ERGeometrizationClosed Z := by
  exact And.intro E.membraneContactSiteClassificationClosed
    (And.intro E.erSheetFormationClosed
      (And.intro E.tubuleNetworkMorphologyClosed E.stressInducedRemodelingClosed))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse