import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure EndoplasmicReticulumStructure where
  membrane : Type
  lumen : Type
  membraneProteins : Type
  chaperones : Type
  calciumIons : Type
  luminalSpace : Prop
  continuousWithNuclearEnvelope : Prop
  roughER : Prop
  smoothER : Prop
  stressResponse : Prop
  luminalSpaceTerm : luminalSpace
  continuousWithNuclearEnvelopeTerm : continuousWithNuclearEnvelope
  roughERTerm : roughER
  smoothERTerm : smoothER
  stressResponseTerm : stressResponse

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse