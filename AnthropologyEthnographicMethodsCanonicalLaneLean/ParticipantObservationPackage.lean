import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure ParticipantObservationPackage where
  immersionPeriod : Prop
  participantAccess : Prop
  noteTakingProtocol : Prop
  reflexivityStatement : Prop

structure ParticipantObservationEvidence (P : ParticipantObservationPackage) where
  immersionPeriodClosed : P.immersionPeriod
  participantAccessClosed : P.participantAccess
  noteTakingProtocolClosed : P.noteTakingProtocol
  reflexivityStatementClosed : P.reflexivityStatement

def ParticipantObservationClosed (P : ParticipantObservationPackage) : Prop :=
  P.immersionPeriod ∧ P.participantAccess ∧ P.noteTakingProtocol ∧ P.reflexivityStatement

theorem participant_observation_closed_from_evidence (P : ParticipantObservationPackage) (E : ParticipantObservationEvidence P) :
    ParticipantObservationClosed P := by
  exact And.intro E.immersionPeriodClosed (And.intro E.participantAccessClosed (And.intro E.noteTakingProtocolClosed E.reflexivityStatementClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse