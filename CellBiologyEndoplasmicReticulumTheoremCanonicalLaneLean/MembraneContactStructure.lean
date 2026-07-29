import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure MembraneContactPackage (A : AdmissibleClass) where
  erMembraneContactSiteFormed : Prop
  lipidTransportRegulated : Prop
  calciumSignalingCoupling : Prop
  membraneContactEvidence : erMembraneContactSiteFormed ∧ lipidTransportRegulated ∧ calciumSignalingCoupling

structure MembraneContactEvidence {A : AdmissibleClass} (M : MembraneContactPackage A) where
  erMembraneContactSiteFormedClosed : M.erMembraneContactSiteFormed
  lipidTransportRegulatedClosed : M.lipidTransportRegulated
  calciumSignalingCouplingClosed : M.calciumSignalingCoupling

def MembraneContactClosed {A : AdmissibleClass} (M : MembraneContactPackage A) : Prop :=
  M.erMembraneContactSiteFormed ∧ M.lipidTransportRegulated ∧ M.calciumSignalingCoupling

theorem membrane_contact_closed_from_evidence
    {A : AdmissibleClass} (M : MembraneContactPackage A) (E : MembraneContactEvidence M) :
    MembraneContactClosed M := by
  exact And.intro E.erMembraneContactSiteFormedClosed
    (And.intro E.lipidTransportRegulatedClosed E.calciumSignalingCouplingClosed)

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse
