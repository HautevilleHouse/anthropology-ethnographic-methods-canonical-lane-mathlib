import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.CulturalInterpretation

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure ReflexivityPackage {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} {C : CulturalInterpretationPackage F P T} where
  positionalityAwareness : Prop
  biasMitigation : Prop
  ethicalConsiderations : Prop
  transparency : Prop

structure ReflexivityEvidence {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} {C : CulturalInterpretationPackage F P T}
    (R : ReflexivityPackage F P T C) where
  positionalityAwarenessClosed : R.positionalityAwareness
  biasMitigationClosed : R.biasMitigation
  ethicalConsiderationsClosed : R.ethicalConsiderations
  transparencyClosed : R.transparency

def ReflexivityClosed {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} {C : CulturalInterpretationPackage F P T}
    (R : ReflexivityPackage F P T C) : Prop :=
  R.positionalityAwareness ∧ R.biasMitigation ∧ R.ethicalConsiderations ∧ R.transparency

theorem reflexivity_closed_from_evidence
    {F : FieldworkPackage} {P : ParticipantObservationPackage F}
    {T : ThickDescriptionPackage F P} {C : CulturalInterpretationPackage F P T}
    (R : ReflexivityPackage F P T C) (E : ReflexivityEvidence R) :
    ReflexivityClosed R := by
  exact And.intro E.positionalityAwarenessClosed (And.intro E.biasMitigationClosed (And.intro E.ethicalConsiderationsClosed E.transparencyClosed))

end HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse