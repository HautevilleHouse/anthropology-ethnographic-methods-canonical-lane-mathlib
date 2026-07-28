import AnthropologyEthnographicMethodsCanonicalLaneLean.FieldworkDesign

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure ParticipantObservationProtocolPackage {F : FieldworkDesignPackage} where
  engagementMode : Prop
  fieldNotesSystem : Prop
  rapportMaintenance : Prop
  participantCheck : Prop
  observationSchedule : Prop

structure ParticipantObservationProtocolEvidence {F : FieldworkDesignPackage}
    (P : ParticipantObservationProtocolPackage F) where
  engagementModeClosed : P.engagementMode
  fieldNotesSystemClosed : P.fieldNotesSystem
  rapportMaintenanceClosed : P.rapportMaintenance
  participantCheckClosed : P.participantCheck
  observationScheduleClosed : P.observationSchedule

def ParticipantObservationProtocolClosed {F : FieldworkDesignPackage}
    (P : ParticipantObservationProtocolPackage F) : Prop :=
  P.engagementMode ∧ P.fieldNotesSystem ∧ P.rapportMaintenance ∧
  P.participantCheck ∧ P.observationSchedule

theorem participant_observation_protocol_closed_from_evidence
    {F : FieldworkDesignPackage} (P : ParticipantObservationProtocolPackage F)
    (E : ParticipantObservationProtocolEvidence P) :
    ParticipantObservationProtocolClosed P :=
  And.intro E.engagementModeClosed
    (And.intro E.fieldNotesSystemClosed
      (And.intro E.rapportMaintenanceClosed
        (And.intro E.participantCheckClosed E.observationScheduleClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse