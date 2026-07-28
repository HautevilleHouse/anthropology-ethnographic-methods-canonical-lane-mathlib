import AnthropologyEthnographicMethodsCanonicalLaneLean.FieldworkProtocol

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure ParticipantObservationPackage {F : FieldworkProtocolPackage} where
  observerImmersion : Prop
  fieldNotesRecording : Prop
  reflexiveJournaling : Prop
  memberChecking : Prop

structure ParticipantObservationEvidence {F : FieldworkProtocolPackage} (P : ParticipantObservationPackage F) where
  observerImmersionClosed : P.observerImmersion
  fieldNotesRecordingClosed : P.fieldNotesRecording
  reflexiveJournalingClosed : P.reflexiveJournaling
  memberCheckingClosed : P.memberChecking

def ParticipantObservationClosed {F : FieldworkProtocolPackage} (P : ParticipantObservationPackage F) : Prop :=
  P.observerImmersion ∧ P.fieldNotesRecording ∧ P.reflexiveJournaling ∧ P.memberChecking

theorem participant_observation_closed_from_evidence {F : FieldworkProtocolPackage} (P : ParticipantObservationPackage F) (E : ParticipantObservationEvidence P) :
    ParticipantObservationClosed P := by
  exact And.intro E.observerImmersionClosed
    (And.intro E.fieldNotesRecordingClosed
      (And.intro E.reflexiveJournalingClosed E.memberCheckingClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse