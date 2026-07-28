import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEthnographicMethodsCanonicalLaneLean.EthnographicObjects

/-!
# Ethical Noncollapsing Package
-/

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthicalNoncollapsingPackage (O : EthnographicAdmittedObject) where
  confidentialityPreserved : Prop
  participantPrivacyProtected : Prop
  noHarmEnsured : Prop
  dataStorageSecure : Prop

structure EthicalNoncollapsingEvidence {O : EthnographicAdmittedObject}
    (N : EthicalNoncollapsingPackage O) where
  confidentialityPreservedClosed : N.confidentialityPreserved
  participantPrivacyProtectedClosed : N.participantPrivacyProtected
  noHarmEnsuredClosed : N.noHarmEnsured
  dataStorageSecureClosed : N.dataStorageSecure

def EthicalNoncollapsingClosed {O : EthnographicAdmittedObject}
    (N : EthicalNoncollapsingPackage O) : Prop :=
  N.confidentialityPreserved ∧ N.participantPrivacyProtected ∧
  N.noHarmEnsured ∧ N.dataStorageSecure

theorem ethical_noncollapsing_closed_from_evidence
    {O : EthnographicAdmittedObject} (N : EthicalNoncollapsingPackage O)
    (E : EthicalNoncollapsingEvidence N) : EthicalNoncollapsingClosed N := by
  exact And.intro E.confidentialityPreservedClosed
    (And.intro E.participantPrivacyProtectedClosed
      (And.intro E.noHarmEnsuredClosed E.dataStorageSecureClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse