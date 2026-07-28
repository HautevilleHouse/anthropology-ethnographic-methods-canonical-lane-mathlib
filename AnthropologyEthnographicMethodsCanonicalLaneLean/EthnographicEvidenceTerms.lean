import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.EthnographicObjects
import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.EthicalNoncollapsing

/-!
# Ethnographic Evidence Terms
-/

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldworkEvidenceTerms {O : EthnographicAdmittedObject}
    (F : FieldworkAnalyticCertificate O) where
  siteAccessGranted : F.siteAccessGranted
  participantObservationCompleted : F.participantObservationCompleted
  fieldNotesCoded : F.fieldNotesCoded
  fieldworkClosed : FieldworkClosed O

def FieldworkAnalyticCertificate.evidenceTerms {O : EthnographicAdmittedObject}
    (F : FieldworkAnalyticCertificate O) : FieldworkEvidenceTerms F :=
  { siteAccessGranted := F.siteAccessGrantedClosed
  , participantObservationCompleted := F.participantObservationCompletedClosed
  , fieldNotesCoded := F.fieldNotesCodedClosed
  , fieldworkClosed := fieldwork_closed_from_evidence O F.fieldworkEvidence
  }

structure InterviewEvidenceTerms {O : EthnographicAdmittedObject}
    (I : InterviewAnalyticCertificate O) where
  interviewGuideApproved : I.interviewGuideApproved
  interviewsConducted : I.interviewsConducted
  transcriptsVerified : I.transcriptsVerified
  interviewClosed : InterviewClosed O

def InterviewAnalyticCertificate.evidenceTerms {O : EthnographicAdmittedObject}
    (I : InterviewAnalyticCertificate O) : InterviewEvidenceTerms I :=
  { interviewGuideApproved := I.interviewGuideApprovedClosed
  , interviewsConducted := I.interviewsConductedClosed
  , transcriptsVerified := I.transcriptsVerifiedClosed
  , interviewClosed := interview_closed_from_evidence O I.interviewEvidence
  }

structure CodingEvidenceTerms {O : EthnographicAdmittedObject}
    (C : CodingAnalyticCertificate O) where
  codingSchemeDeveloped : C.codingSchemeDeveloped
  interCoderReliabilityEstablished : C.interCoderReliabilityEstablished
  themesExtracted : C.themesExtracted
  codingClosed : CodingClosed O

def CodingAnalyticCertificate.evidenceTerms {O : EthnographicAdmittedObject}
    (C : CodingAnalyticCertificate O) : CodingEvidenceTerms C :=
  { codingSchemeDeveloped := C.codingSchemeDevelopedClosed
  , interCoderReliabilityEstablished := C.interCoderReliabilityEstablishedClosed
  , themesExtracted := C.themesExtractedClosed
  , codingClosed := coding_closed_from_evidence O C.codingEvidence
  }

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse