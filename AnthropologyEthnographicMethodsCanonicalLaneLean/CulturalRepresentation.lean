import AnthropologyEthnographicMethodsCanonicalLaneLean.ThickDescription

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure CulturalRepresentationPackage {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A} where
  communityVoice : Prop
  powerDynamics : Prop
  historicalContext : Prop
  avoidingEssentialism : Prop
  consentAndOwnership : Prop

def CulturalRepresentationClosed {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    (C : CulturalRepresentationPackage F P I A T) : Prop :=
  C.communityVoice ∧ C.powerDynamics ∧ C.historicalContext ∧
  C.avoidingEssentialism ∧ C.consentAndOwnership

structure CulturalRepresentationEvidence {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    (C : CulturalRepresentationPackage F P I A T) where
  communityVoiceClosed : C.communityVoice
  powerDynamicsClosed : C.powerDynamics
  historicalContextClosed : C.historicalContext
  avoidingEssentialismClosed : C.avoidingEssentialism
  consentAndOwnershipClosed : C.consentAndOwnership

theorem cultural_representation_closed_from_evidence
    {F : FieldworkDesignPackage} {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P} {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    (C : CulturalRepresentationPackage F P I A T)
    (E : CulturalRepresentationEvidence C) : CulturalRepresentationClosed C :=
  And.intro E.communityVoiceClosed
    (And.intro E.powerDynamicsClosed
      (And.intro E.historicalContextClosed
        (And.intro E.avoidingEssentialismClosed E.consentAndOwnershipClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse