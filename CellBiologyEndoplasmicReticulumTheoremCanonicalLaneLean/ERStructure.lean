import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure EROrganelleMembrane where
  lipidBilayer : Prop
  lumenContinuity : Prop
  ribosomeAttachment : Prop
  nuclearEnvelopeContinuity : Prop
  smoothERDomains : Prop
  roughERDomains : Prop
  lipidBilayerClosed : lipidBilayer
  lumenContinuityClosed : lumenContinuity
  ribosomeAttachmentClosed : ribosomeAttachment
  nuclearEnvelopeContinuityClosed : nuclearEnvelopeContinuity
  smoothERDomainsClosed : smoothERDomains
  roughERDomainsClosed : roughERDomains

structure ERStructurePackage where
  membrane : EROrganelleMembrane
  tubularNetwork : Prop
  sheetFormation : Prop
  membraneContacts : Prop
  tubularNetworkClosed : tubularNetwork
  sheetFormationClosed : sheetFormation
  membraneContactsClosed : membraneContacts

def ERStructureClosed (E : ERStructurePackage) : Prop :=
  E.tubularNetwork ∧ E.sheetFormation ∧ E.membraneContacts

theorem er_structure_closed_from_evidence (E : ERStructurePackage) (m : EROrganelleMembrane) (h1 : E.tubularNetwork) (h2 : E.sheetFormation) (h3 : E.membraneContacts) : ERStructureClosed E := by
  exact And.intro h1 (And.intro h2 h3)

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse