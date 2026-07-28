import AnthropologyEthnographicMethodsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EthnographicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EthnographicAdmittedObject where
  space : EthnographicSpace
  ethnographicValidity : Prop
  methodologicalRigor : Prop
  communityAccountability : Prop
  conclusion : ethnographicValidity ∧ methodologicalRigor ∧ communityAccountability

structure EthnographicEndgameState where
  object : EthnographicAdmittedObject

def EthnographicWitnessClosed (O : EthnographicAdmittedObject) : Prop :=
  O.conclusion

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse