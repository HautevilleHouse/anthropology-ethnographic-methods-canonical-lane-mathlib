import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.ThickDescription

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure CulturalInterpretationPackage {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} where
  emicAnalysis : Prop
  eticComparison : Prop
  symbolicTranslation : Prop
  theoreticalContribution : Prop

structure CulturalInterpretationEvidence {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} (C : CulturalInterpretationPackage F P T) where
  emicAnalysisClosed : C.emicAnalysis
  eticComparisonClosed : C.eticComparison
  symbolicTranslationClosed : C.symbolicTranslation
  theoreticalContributionClosed : C.theoreticalContribution

def CulturalInterpretationClosed {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} (C : CulturalInterpretationPackage F P T) : Prop :=
  C.emicAnalysis ∧ C.eticComparison ∧ C.symbolicTranslation ∧ C.theoreticalContribution

theorem cultural_interpretation_closed_from_evidence
    {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} (C : CulturalInterpretationPackage F P T)
    (E : CulturalInterpretationEvidence C) : CulturalInterpretationClosed C := by
  exact And.intro E.emicAnalysisClosed (And.intro E.eticComparisonClosed (And.intro E.symbolicTranslationClosed E.theoreticalContributionClosed))

end HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse