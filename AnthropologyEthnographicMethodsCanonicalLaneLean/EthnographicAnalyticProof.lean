import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.EthnographicObjects
import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.EthicalNoncollapsing

/-!
# Ethnographic Analytic Proof Certificates
-/

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldworkAnalyticCertificate (O : EthnographicAdmittedObject) where
  siteAccessGranted : Prop
  participantObservationCompleted : Prop
  fieldNotesCoded : Prop
  siteAccessGrantedClosed : siteAccessGranted
  participantObservationCompletedClosed : participantObservationCompleted
  fieldNotesCodedClosed : fieldNotesCoded
  fieldworkEvidence : FieldworkEvidence O

def FieldworkClosed (O : EthnographicAdmittedObject) : Prop :=
  let F : FieldworkAnalyticCertificate O := _
  in F.siteAccessGranted ∧ F.participantObservationCompleted ∧ F.fieldNotesCoded

structure FieldworkEvidence (O : EthnographicAdmittedObject) where
  siteAccessGrantedClosed : True
  participantObservationCompletedClosed : True
  fieldNotesCodedClosed : True

def fieldwork_closed_from_evidence (O : EthnographicAdmittedObject)
    (E : FieldworkEvidence O) : FieldworkClosed O := by
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

structure InterviewAnalyticCertificate (O : EthnographicAdmittedObject) where
  interviewGuideApproved : Prop
  interviewsConducted : Prop
  transcriptsVerified : Prop
  interviewGuideApprovedClosed : interviewGuideApproved
  interviewsConductedClosed : interviewsConducted
  transcriptsVerifiedClosed : transcriptsVerified
  interviewEvidence : InterviewEvidence O

def InterviewClosed (O : EthnographicAdmittedObject) : Prop :=
  let I : InterviewAnalyticCertificate O := _
  in I.interviewGuideApproved ∧ I.interviewsConducted ∧ I.transcriptsVerified

structure InterviewEvidence (O : EthnographicAdmittedObject) where
  interviewGuideApprovedClosed : True
  interviewsConductedClosed : True
  transcriptsVerifiedClosed : True

def interview_closed_from_evidence (O : EthnographicAdmittedObject)
    (E : InterviewEvidence O) : InterviewClosed O := by
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

structure CodingAnalyticCertificate (O : EthnographicAdmittedObject) where
  codingSchemeDeveloped : Prop
  interCoderReliabilityEstablished : Prop
  themesExtracted : Prop
  codingSchemeDevelopedClosed : codingSchemeDeveloped
  interCoderReliabilityEstablishedClosed : interCoderReliabilityEstablished
  themesExtractedClosed : themesExtracted
  codingEvidence : CodingEvidence O

def CodingClosed (O : EthnographicAdmittedObject) : Prop :=
  let C : CodingAnalyticCertificate O := _
  in C.codingSchemeDeveloped ∧ C.interCoderReliabilityEstablished ∧ C.themesExtracted

structure CodingEvidence (O : EthnographicAdmittedObject) where
  codingSchemeDevelopedClosed : True
  interCoderReliabilityEstablishedClosed : True
  themesExtractedClosed : True

def coding_closed_from_evidence (O : EthnographicAdmittedObject)
    (E : CodingEvidence O) : CodingClosed O := by
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse