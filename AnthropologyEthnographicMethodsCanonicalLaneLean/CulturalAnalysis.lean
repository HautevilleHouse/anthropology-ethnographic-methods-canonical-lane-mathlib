import AnthropologyEthnographicMethodsCanonicalLaneLean.ParticipantObservation

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure CulturalAnalysisPackage {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} where
  codingScheme : Prop
  thematicCategorization : Prop
  narrativeStructure : Prop
  discursivePatterns : Prop

structure CulturalAnalysisEvidence {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} (C : CulturalAnalysisPackage F P) where
  codingSchemeClosed : C.codingScheme
  thematicCategorizationClosed : C.thematicCategorization
  narrativeStructureClosed : C.narrativeStructure
  discursivePatternsClosed : C.discursivePatterns

def CulturalAnalysisClosed {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} (C : CulturalAnalysisPackage F P) : Prop :=
  C.codingScheme ∧ C.thematicCategorization ∧ C.narrativeStructure ∧ C.discursivePatterns

theorem cultural_analysis_closed_from_evidence {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} (C : CulturalAnalysisPackage F P) (E : CulturalAnalysisEvidence C) :
    CulturalAnalysisClosed C := by
  exact And.intro E.codingSchemeClosed
    (And.intro E.thematicCategorizationClosed
      (And.intro E.narrativeStructureClosed E.discursivePatternsClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse