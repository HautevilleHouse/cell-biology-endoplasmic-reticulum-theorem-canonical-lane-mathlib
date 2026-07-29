import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure EREndpointClassificationPackage {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    {G : ERGeometrizationPackage C} (Z : ERQualityControlPackage G) where
  targetCell : Type u
  targetState : TopologicalSpace targetCell
  stressResponseType : Prop
  survivalEndpoint : Prop
  apoptosisEndpoint : Prop

structure EREndpointClassificationEvidence {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    {G : ERGeometrizationPackage C} {Z : ERQualityControlPackage G}
    (Epkg : EREndpointClassificationPackage Z) where
  stressResponseTypeClosed : Epkg.stressResponseType
  survivalEndpointClosed : Epkg.survivalEndpoint
  apoptosisEndpointClosed : Epkg.apoptosisEndpoint

def EREndpointClassificationClosed {S : ERStressPackage}
    {U : UnfoldedProteinResponsePackage S} {C : ERMembraneContactPackage U}
    {G : ERGeometrizationPackage C} {Z : ERQualityControlPackage G}
    (Epkg : EREndpointClassificationPackage Z) : Prop :=
  Epkg.stressResponseType ∧ Epkg.survivalEndpoint ∧ Epkg.apoptosisEndpoint

theorem er_endpoint_classification_closed_from_evidence
    {S : ERStressPackage} {U : UnfoldedProteinResponsePackage S}
    {C : ERMembraneContactPackage U} {G : ERGeometrizationPackage C}
    {Z : ERQualityControlPackage G} (Epkg : EREndpointClassificationPackage Z)
    (E : EREndpointClassificationEvidence Epkg) : EREndpointClassificationClosed Epkg := by
  exact And.intro E.stressResponseTypeClosed
    (And.intro E.survivalEndpointClosed E.apoptosisEndpointClosed)

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse