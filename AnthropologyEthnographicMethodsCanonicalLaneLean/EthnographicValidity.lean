import AnthropologyEthnographicMethodsCanonicalLaneLean.CulturalAnalysis

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthnographicValidityPackage {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} {C : CulturalAnalysisPackage F P} where
  triangulation : Prop
  thickDescription : Prop
  reflexivity : Prop
  auditTrail : Prop

structure EthnographicValidityEvidence {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} {C : CulturalAnalysisPackage F P} (V : EthnographicValidityPackage F P C) where
  triangulationClosed : V.triangulation
  thickDescriptionClosed : V.thickDescription
  reflexivityClosed : V.reflexivity
  auditTrailClosed : V.auditTrail

def EthnographicValidityClosed {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} {C : CulturalAnalysisPackage F P} (V : EthnographicValidityPackage F P C) : Prop :=
  V.triangulation ∧ V.thickDescription ∧ V.reflexivity ∧ V.auditTrail

theorem ethnographic_validity_closed_from_evidence {F : FieldworkProtocolPackage} {P : ParticipantObservationPackage F} {C : CulturalAnalysisPackage F P} (V : EthnographicValidityPackage F P C) (E : EthnographicValidityEvidence V) :
    EthnographicValidityClosed V := by
  exact And.intro E.triangulationClosed
    (And.intro E.thickDescriptionClosed
      (And.intro E.reflexivityClosed E.auditTrailClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse