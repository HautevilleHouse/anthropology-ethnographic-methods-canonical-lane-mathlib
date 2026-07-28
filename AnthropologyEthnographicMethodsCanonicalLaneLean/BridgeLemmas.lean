import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.AnthropologyAdmissibleClass
import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.EthnographicFieldwork

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.fieldEntryGained ∧ A.object.ethicalClearance

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.fieldEntryGained A.object.ethicalClearance

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse