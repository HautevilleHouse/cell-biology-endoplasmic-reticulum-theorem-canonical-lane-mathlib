import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

struct ERCrosstalkPackage where
  mitoERContactSites : Prop
  plasmaMembraneInteraction : Prop
  golgiCommunication : Prop
  peroxisomeERConnection : Prop
  nuclearEnvelopeIntegration : Prop

struct ERCrosstalkEvidence (P : ERCrosstalkPackage) where
  mitoERContactSitesClosed : P.mitoERContactSites
  plasmaMembraneInteractionClosed : P.plasmaMembraneInteraction
  golgiCommunicationClosed : P.golgiCommunication
  peroxisomeERConnectionClosed : P.peroxisomeERConnection
  nuclearEnvelopeIntegrationClosed : P.nuclearEnvelopeIntegration

def ERCrosstalkClosed (P : ERCrosstalkPackage) : Prop :=
  P.mitoERContactSites ∧ P.plasmaMembraneInteraction ∧
  P.golgiCommunication ∧ P.peroxisomeERConnection ∧ P.nuclearEnvelopeIntegration

theorem ERCrosstalkClosedFromEvidence (P : ERCrosstalkPackage)
    (E : ERCrosstalkEvidence P) : ERCrosstalkClosed P := by
  exact And.intro E.mitoERContactSitesClosed
    (And.intro E.plasmaMembraneInteractionClosed
      (And.intro E.golgiCommunicationClosed
        (And.intro E.peroxisomeERConnectionClosed E.nuclearEnvelopeIntegrationClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse