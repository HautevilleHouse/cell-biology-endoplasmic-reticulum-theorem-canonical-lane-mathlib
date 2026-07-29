import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERStressSensors where
  IRE1_alpha : Prop
  PERK : Prop
  ATF6 : Prop
  IRE1_alphaClosed : IRE1_alpha
  PERKClosed : PERK
  ATF6Closed : ATF6

structure UnfoldedProteinResponsePackage where
  sensors : ERStressSensors
  ire1Pathway : Prop
  perkPathway : Prop
  atf6Pathway : Prop
  chaperoneInduction : Prop
  apoptosisSignal : Prop
  ire1PathwayClosed : ire1Pathway
  perkPathwayClosed : perkPathway
  atf6PathwayClosed : atf6Pathway
  chaperoneInductionClosed : chaperoneInduction
  apoptosisSignalClosed : apoptosisSignal

def UnfoldedProteinResponseClosed (U : UnfoldedProteinResponsePackage) : Prop :=
  U.ire1Pathway ∧ U.perkPathway ∧ U.atf6Pathway ∧ U.chaperoneInduction ∧ U.apoptosisSignal

theorem unfolded_protein_response_closed_from_evidence (U : UnfoldedProteinResponsePackage) (s : ERStressSensors) (h1 : U.ire1Pathway) (h2 : U.perkPathway) (h3 : U.atf6Pathway) (h4 : U.chaperoneInduction) (h5 : U.apoptosisSignal) : UnfoldedProteinResponseClosed U := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse