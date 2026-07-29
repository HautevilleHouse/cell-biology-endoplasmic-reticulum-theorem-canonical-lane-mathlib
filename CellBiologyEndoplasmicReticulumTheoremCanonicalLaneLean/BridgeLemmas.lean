import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ERWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse