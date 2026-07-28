import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure InterviewMethodsPackage where
  interviewGuide : Prop
  samplingStrategy : Prop
  transcriptionProtocol : Prop
  dataStorage : Prop

structure InterviewMethodsEvidence (I : InterviewMethodsPackage) where
  interviewGuideClosed : I.interviewGuide
  samplingStrategyClosed : I.samplingStrategy
  transcriptionProtocolClosed : I.transcriptionProtocol
  dataStorageClosed : I.dataStorage

def InterviewMethodsClosed (I : InterviewMethodsPackage) : Prop :=
  I.interviewGuide ∧ I.samplingStrategy ∧ I.transcriptionProtocol ∧ I.dataStorage

theorem interview_methods_closed_from_evidence (I : InterviewMethodsPackage) (E : InterviewMethodsEvidence I) :
    InterviewMethodsClosed I := by
  exact And.intro E.interviewGuideClosed (And.intro E.samplingStrategyClosed (And.intro E.transcriptionProtocolClosed E.dataStorageClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse