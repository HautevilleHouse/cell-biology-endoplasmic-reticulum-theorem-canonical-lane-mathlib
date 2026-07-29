import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

struct ERCalciumSignalingPackage where
  sercaPump : Prop
  inositolTrisphosphateReceptor : Prop
  ryanodineReceptor : Prop
  calciumReleaseActivatedCalcium : Prop
  mitochondriaCalciumUptake : Prop

struct ERCalciumSignalingEvidence (P : ERCalciumSignalingPackage) where
  sercaPumpClosed : P.sercaPump
  inositolTrisphosphateReceptorClosed : P.inositolTrisphosphateReceptor
  ryanodineReceptorClosed : P.ryanodineReceptor
  calciumReleaseActivatedCalciumClosed : P.calciumReleaseActivatedCalcium
  mitochondriaCalciumUptakeClosed : P.mitochondriaCalciumUptake

def ERCalciumSignalingClosed (P : ERCalciumSignalingPackage) : Prop :=
  P.sercaPump ∧ P.inositolTrisphosphateReceptor ∧
  P.ryanodineReceptor ∧ P.calciumReleaseActivatedCalcium ∧ P.mitochondriaCalciumUptake

theorem ERCalciumSignalingClosedFromEvidence (P : ERCalciumSignalingPackage)
    (E : ERCalciumSignalingEvidence P) : ERCalciumSignalingClosed P := by
  exact And.intro E.sercaPumpClosed
    (And.intro E.inositolTrisphosphateReceptorClosed
      (And.intro E.ryanodineReceptorClosed
        (And.intro E.calciumReleaseActivatedCalciumClosed E.mitochondriaCalciumUptakeClosed)))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse