import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldworkPackage where
  site : String
  duration : Nat
  participantObservation : Prop
  interviewsConducted : Prop
  artifactsCollected : Prop

structure FieldworkEvidence (F : FieldworkPackage) where
  participantObservationClosed : F.participantObservation
  interviewsConductedClosed : F.interviewsConducted
  artifactsCollectedClosed : F.artifactsCollected

def FieldworkClosed (F : FieldworkPackage) : Prop :=
  F.participantObservation ∧ F.interviewsConducted ∧ F.artifactsCollected

theorem fieldwork_closed_from_evidence (F : FieldworkPackage) (E : FieldworkEvidence F) :
    FieldworkClosed F := by
  exact And.intro E.participantObservationClosed (And.intro E.interviewsConductedClosed E.artifactsCollectedClosed)

end HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse