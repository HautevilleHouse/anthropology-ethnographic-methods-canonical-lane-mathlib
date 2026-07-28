import AnthropologyEthnographicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldworkProtocolPackage where
  informedConsent : Prop
  ethicalApproval : Prop
  fieldSiteAccess : Prop
  rapportBuilding : Prop
  dataCollectionMethod : Prop

structure FieldworkProtocolEvidence (F : FieldworkProtocolPackage) where
  informedConsentClosed : F.informedConsent
  ethicalApprovalClosed : F.ethicalApproval
  fieldSiteAccessClosed : F.fieldSiteAccess
  rapportBuildingClosed : F.rapportBuilding
  dataCollectionMethodClosed : F.dataCollectionMethod

def FieldworkProtocolClosed (F : FieldworkProtocolPackage) : Prop :=
  F.informedConsent ∧ F.ethicalApproval ∧ F.fieldSiteAccess ∧ F.rapportBuilding ∧ F.dataCollectionMethod

theorem fieldwork_protocol_closed_from_evidence (F : FieldworkProtocolPackage) (E : FieldworkProtocolEvidence F) :
    FieldworkProtocolClosed F := by
  exact And.intro E.informedConsentClosed
    (And.intro E.ethicalApprovalClosed
      (And.intro E.fieldSiteAccessClosed
        (And.intro E.rapportBuildingClosed E.dataCollectionMethodClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse