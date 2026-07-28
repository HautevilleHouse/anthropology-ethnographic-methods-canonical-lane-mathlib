import AnthropologyEthnographicMethodsCanonicalLaneLean.CulturalRepresentation

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure ReflexivityBiasMitigationPackage {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    {C : CulturalRepresentationPackage F P I A T} where
  positionalityStatement : Prop
  peerDebriefing : Prop
  auditTrail : Prop
  negativeCaseSearch : Prop
  researcherEffects : Prop

def ReflexivityBiasMitigationClosed {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    {C : CulturalRepresentationPackage F P I A T}
    (R : ReflexivityBiasMitigationPackage F P I A T C) : Prop :=
  R.positionalityStatement ∧ R.peerDebriefing ∧ R.auditTrail ∧
  R.negativeCaseSearch ∧ R.researcherEffects

structure ReflexivityBiasMitigationEvidence {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    {C : CulturalRepresentationPackage F P I A T}
    (R : ReflexivityBiasMitigationPackage F P I A T C) where
  positionalityStatementClosed : R.positionalityStatement
  peerDebriefingClosed : R.peerDebriefing
  auditTrailClosed : R.auditTrail
  negativeCaseSearchClosed : R.negativeCaseSearch
  researcherEffectsClosed : R.researcherEffects

theorem reflexivity_bias_mitigation_closed_from_evidence
    {F : FieldworkDesignPackage} {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P} {A : EthnographicAnalysisPackage F P I}
    {T : ThickDescriptionPackage F P I A}
    {C : CulturalRepresentationPackage F P I A T}
    (R : ReflexivityBiasMitigationPackage F P I A T C)
    (E : ReflexivityBiasMitigationEvidence R) :
    ReflexivityBiasMitigationClosed R :=
  And.intro E.positionalityStatementClosed
    (And.intro E.peerDebriefingClosed
      (And.intro E.auditTrailClosed
        (And.intro E.negativeCaseSearchClosed E.researcherEffectsClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse