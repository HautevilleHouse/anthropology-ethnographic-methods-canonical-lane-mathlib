import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthnographicAdmittedObject where
  fieldSetting : String
  researchQuestion : String
  methodology : String
  conclusion : Prop

structure AdmissibleClass where
  object : EthnographicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse