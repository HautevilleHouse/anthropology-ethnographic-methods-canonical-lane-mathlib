import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldnotesPackage where
  recordingMedium : Prop
  indexingSystem : Prop
  confidentialityProtocol : Prop
  retentionPolicy : Prop

structure FieldnotesEvidence (F : FieldnotesPackage) where
  recordingMediumClosed : F.recordingMedium
  indexingSystemClosed : F.indexingSystem
  confidentialityProtocolClosed : F.confidentialityProtocol
  retentionPolicyClosed : F.retentionPolicy

def FieldnotesClosed (F : FieldnotesPackage) : Prop :=
  F.recordingMedium ∧ F.indexingSystem ∧ F.confidentialityProtocol ∧ F.retentionPolicy

theorem fieldnotes_closed_from_evidence (F : FieldnotesPackage) (E : FieldnotesEvidence F) :
    FieldnotesClosed F := by
  exact And.intro E.recordingMediumClosed (And.intro E.indexingSystemClosed (And.intro E.confidentialityProtocolClosed E.retentionPolicyClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse