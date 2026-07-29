import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean

structure CotranslationalTranslocationPackage where
  signalRecognitionParticle : Prop
  sec61Translocon : Prop
  ribosomeDocking : Prop
  nascentChainInsertion : Prop

structure CotranslationalTranslocationEvidence (T : CotranslationalTranslocationPackage) where
  signalRecognitionParticleClosed : T.signalRecognitionParticle
  sec61TransloconClosed : T.sec61Translocon
  ribosomeDockingClosed : T.ribosomeDocking
  nascentChainInsertionClosed : T.nascentChainInsertion

def CotranslationalTranslocationClosed (T : CotranslationalTranslocationPackage) : Prop :=
  T.signalRecognitionParticle ∧ T.sec61Translocon ∧
  T.ribosomeDocking ∧ T.nascentChainInsertion

theorem cotranslational_translocation_closed_from_evidence
    (T : CotranslationalTranslocationPackage)
    (E : CotranslationalTranslocationEvidence T) :
    CotranslationalTranslocationClosed T := by
  exact And.intro E.signalRecognitionParticleClosed
    (And.intro E.sec61TransloconClosed
      (And.intro E.ribosomeDockingClosed E.nascentChainInsertionClosed))

end CellBiologyEndoplasmicReticulumTheoremCanonicalLaneLean
end HautevilleHouse