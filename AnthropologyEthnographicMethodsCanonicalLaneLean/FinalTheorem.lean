import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

def ConstrainedAnthropologyEthnographicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_ethnographic_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyEthnographicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse