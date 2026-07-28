import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FieldworkContext where
  site : String
  duration : Nat
  languages : List String

structure EthnographicAdmittedObject where
  context : FieldworkContext
  approvedByIRB : Prop
  informedConsentObtained : Prop
  dataCollectionComplete : Prop
  conclusion : approvedByIRB ∧ informedConsentObtained ∧ dataCollectionComplete

structure EthnographicEndgameState where
  object : EthnographicAdmittedObject

def EthnographicWitnessClosed (O : EthnographicAdmittedObject) : Prop :=
  O.approvedByIRB ∧ O.informedConsentObtained ∧ O.dataCollectionComplete

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse