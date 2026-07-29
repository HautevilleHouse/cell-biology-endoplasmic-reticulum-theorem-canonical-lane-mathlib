import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERLipidSynthesisPackage where
  phospholipidSynthesis : Prop
  cholesterolMetabolism : Prop
  ceramideProduction : Prop
  lipidDropletBiogenesis : Prop
  phospholipidSynthesisClosed : phospholipidSynthesis
  cholesterolMetabolismClosed : cholesterolMetabolism
  ceramideProductionClosed : ceramideProduction
  lipidDropletBiogenesisClosed : lipidDropletBiogenesis

def ERLipidSynthesisClosed (E : ERLipidSynthesisPackage) : Prop :=
  E.phospholipidSynthesis ∧ E.cholesterolMetabolism ∧ E.ceramideProduction ∧ E.lipidDropletBiogenesis

theorem er_lipid_synthesis_closed_from_evidence (E : ERLipidSynthesisPackage) (h1 : E.phospholipidSynthesis) (h2 : E.cholesterolMetabolism) (h3 : E.ceramideProduction) (h4 : E.lipidDropletBiogenesis) : ERLipidSynthesisClosed E := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse