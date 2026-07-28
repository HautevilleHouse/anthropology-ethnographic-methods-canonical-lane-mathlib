import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthicalProtocolsPackage where
  irbApproval : Prop
  informedConsent : Prop
  dataAnonymization : Prop
  communityFeedback : Prop

structure EthicalProtocolsEvidence (E : EthicalProtocolsPackage) where
  irbApprovalClosed : E.irbApproval
  informedConsentClosed : E.informedConsent
  dataAnonymizationClosed : E.dataAnonymization
  communityFeedbackClosed : E.communityFeedback

def EthicalProtocolsClosed (E : EthicalProtocolsPackage) : Prop :=
  E.irbApproval ∧ E.informedConsent ∧ E.dataAnonymization ∧ E.communityFeedback

theorem ethical_protocols_closed_from_evidence (E : EthicalProtocolsPackage) (Ev : EthicalProtocolsEvidence E) :
    EthicalProtocolsClosed E := by
  exact And.intro Ev.irbApprovalClosed (And.intro Ev.informedConsentClosed (And.intro Ev.dataAnonymizationClosed Ev.communityFeedbackClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse