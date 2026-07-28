import AnthropologyEthnographicMethodsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthnographicAdmittedObject where
  fieldSetting : Type
  participantObservation : Prop
  thickDescription : Prop
  culturalInterpretation : Prop
  conclusion : culturalInterpretation

structure EthnographicTheoremStatement where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  constrainedClosure : Prop
  carriedRemainder : String

def sourceEthnographicTheorem : EthnographicTheoremStatement :=
  {
    sourceKey := "ethnographic-methods-canonical-lane"
    theoremName := "Thick Description Adequacy"
    classicalBoundary := "Interpretive boundary carried as remainder"
    constrainedClosure := ∀ A : AdmissibleClass, ConstrainedEthnographicClosure A
    carriedRemainder := "Interpretive gap between observation and meaning"
  }

theorem ethnographic_theorem_pinned :
    sourceEthnographicTheorem.constrainedClosure := by
  intro A
  exact constrained_ethnographic_endgame A

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse
