import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthnographicFieldSite where
  location : Type
  community : Type
  researchQuestion : Prop

structure AnthropologyAdmittedObject where
  site : EthnographicFieldSite
  fieldEntryGained : Prop
  ethicalClearance : Prop
  conclusion : fieldEntryGained ∧ ethicalClearance

structure AdmissibleClass where
  object : AnthropologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.fieldEntryGained ∧ A.object.ethicalClearance) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse