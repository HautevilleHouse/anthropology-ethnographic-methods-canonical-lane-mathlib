import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure FieldworkDesignPackage where
  researchSite : Type u
  siteContext : Type v
  accessNegotiation : Prop
  roleDefinition : Prop
  ethicalClearance : Prop
  timeFrame : Prop
  dataCollectionPlan : Type w

structure FieldworkDesignEvidence (F : FieldworkDesignPackage) where
  accessNegotiationClosed : F.accessNegotiation
  roleDefinitionClosed : F.roleDefinition
  ethicalClearanceClosed : F.ethicalClearance
  timeFrameClosed : F.timeFrame

def FieldworkDesignClosed (F : FieldworkDesignPackage) : Prop :=
  F.accessNegotiation ∧ F.roleDefinition ∧ F.ethicalClearance ∧ F.timeFrame

theorem fieldwork_design_closed_from_evidence (F : FieldworkDesignPackage)
    (E : FieldworkDesignEvidence F) : FieldworkDesignClosed F :=
  And.intro E.accessNegotiationClosed
    (And.intro E.roleDefinitionClosed
      (And.intro E.ethicalClearanceClosed E.timeFrameClosed))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse