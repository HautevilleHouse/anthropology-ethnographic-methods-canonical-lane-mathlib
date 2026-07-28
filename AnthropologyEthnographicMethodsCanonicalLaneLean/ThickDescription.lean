import AnthropologyEthnographicMethodsCanonicalLaneLean.EthnographicAnalysis

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure ThickDescriptionPackage {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I} where
  contextualDetail : Prop
  interpretiveLayer : Prop
  emicPerspective : Prop
  authorPositionality : Prop
  readerTransparency : Prop

def ThickDescriptionClosed {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    (T : ThickDescriptionPackage F P I A) : Prop :=
  T.contextualDetail ∧ T.interpretiveLayer ∧ T.emicPerspective ∧
  T.authorPositionality ∧ T.readerTransparency

structure ThickDescriptionEvidence {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    {A : EthnographicAnalysisPackage F P I}
    (T : ThickDescriptionPackage F P I A) where
  contextualDetailClosed : T.contextualDetail
  interpretiveLayerClosed : T.interpretiveLayer
  emicPerspectiveClosed : T.emicPerspective
  authorPositionalityClosed : T.authorPositionality
  readerTransparencyClosed : T.readerTransparency

theorem thick_description_closed_from_evidence
    {F : FieldworkDesignPackage} {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P} {A : EthnographicAnalysisPackage F P I}
    (T : ThickDescriptionPackage F P I A) (E : ThickDescriptionEvidence T) :
    ThickDescriptionClosed T :=
  And.intro E.contextualDetailClosed
    (And.intro E.interpretiveLayerClosed
      (And.intro E.emicPerspectiveClosed
        (And.intro E.authorPositionalityClosed E.readerTransparencyClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse