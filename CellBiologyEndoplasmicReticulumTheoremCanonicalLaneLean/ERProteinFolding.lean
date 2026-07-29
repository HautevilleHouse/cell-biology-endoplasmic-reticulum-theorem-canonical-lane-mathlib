import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERProteinFoldingPackage where
  chaperoneNetwork : Prop
  disulfideBondFormation : Prop
  calnexinCalreticulinCycle : Prop
  unfoldedProteinResponse : Prop
  qualityControlMachinery : Prop

structure ERProteinFoldingEvidence (P : ERProteinFoldingPackage) where
  chaperoneNetworkClosed : P.chaperoneNetwork
  disulfideBondFormationClosed : P.disulfideBondFormation
  calnexinCalreticulinCycleClosed : P.calnexinCalreticulinCycle
  unfoldedProteinResponseClosed : P.unfoldedProteinResponse
  qualityControlMachineryClosed : P.qualityControlMachinery

def ERProteinFoldingClosed (P : ERProteinFoldingPackage) : Prop :=
  P.chaperoneNetwork ∧ P.disulfideBondFormation ∧
  P.calnexinCalreticulinCycle ∧ P.unfoldedProteinResponse ∧ P.qualityControlMachinery

theorem ERProteinFoldingClosedFromEvidence (P : ERProteinFoldingPackage)
    (E : ERProteinFoldingEvidence P) : ERProteinFoldingClosed P := by
  exact And.intro E.chaperoneNetworkClosed
    (And.intro E.disulfideBondFormationClosed
      (And.intro E.calnexinCalreticulinCycleClosed
        (And.intro E.unfoldedProteinResponseClosed E.qualityControlMachineryClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse