import AnthropologyEthnographicMethodsCanonicalLaneLean.ParticipantObservationProtocol

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure InterviewMethodPackage {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F} where
  interviewGuide : Prop
  samplingStrategy : Prop
  questionTypes : Prop
  recordingProtocol : Prop
  transcriptionQuality : Prop
  confidentiality : Prop

structure InterviewMethodEvidence {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    (I : InterviewMethodPackage F P) where
  interviewGuideClosed : I.interviewGuide
  samplingStrategyClosed : I.samplingStrategy
  questionTypesClosed : I.questionTypes
  recordingProtocolClosed : I.recordingProtocol
  transcriptionQualityClosed : I.transcriptionQuality
  confidentialityClosed : I.confidentiality

def InterviewMethodClosed {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    (I : InterviewMethodPackage F P) : Prop :=
  I.interviewGuide ∧ I.samplingStrategy ∧ I.questionTypes ∧
  I.recordingProtocol ∧ I.transcriptionQuality ∧ I.confidentiality

theorem interview_method_closed_from_evidence {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    (I : InterviewMethodPackage F P) (E : InterviewMethodEvidence I) :
    InterviewMethodClosed I :=
  And.intro E.interviewGuideClosed
    (And.intro E.samplingStrategyClosed
      (And.intro E.questionTypesClosed
        (And.intro E.recordingProtocolClosed
          (And.intro E.transcriptionQualityClosed E.confidentialityClosed))))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse