import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure ERCompartment where
  carrier : Type
  topology : TopologicalSpace carrier

structure ERAdmittedObject where
  compartment : ERCompartment
  functionalER : Prop
  qualityControlActive : Prop
  translocationCompetent : Prop
  stressResponseIntact : Prop
  conclusion : functionalER ∧ qualityControlActive ∧
    translocationCompetent ∧ stressResponseIntact

def ERWitnessClosed (O : ERAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse