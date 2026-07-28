import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.AnthropologyAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldworkPackage where
  fieldSettingIdentified : Prop
  entryNegotiated : Prop
  dataCollectionSystematic : Prop
  reflexivityPracticed : Prop
  ethicalOversight : Prop

structure FieldworkEvidence (F : FieldworkPackage) where
  fieldSettingIdentifiedClosed : F.fieldSettingIdentified
  entryNegotiatedClosed : F.entryNegotiated
  dataCollectionSystematicClosed : F.dataCollectionSystematic
  reflexivityPracticedClosed : F.reflexivityPracticed
  ethicalOversightClosed : F.ethicalOversight

def FieldworkClosed (F : FieldworkPackage) : Prop :=
  F.fieldSettingIdentified ∧ F.entryNegotiated ∧ F.dataCollectionSystematic ∧
  F.reflexivityPracticed ∧ F.ethicalOversight

theorem fieldwork_closed_from_evidence (F : FieldworkPackage) (E : FieldworkEvidence F) :
    FieldworkClosed F := by
  exact And.intro E.fieldSettingIdentifiedClosed
    (And.intro E.entryNegotiatedClosed
      (And.intro E.dataCollectionSystematicClosed
        (And.intro E.reflexivityPracticedClosed E.ethicalOversightClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse