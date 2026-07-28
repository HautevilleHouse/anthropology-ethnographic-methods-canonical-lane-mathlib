import AnthropologyEthnographicMethodsCanonicalLaneLean.InterviewMethod

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

structure EthnographicAnalysisPackage {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P} where
  codingScheme : Prop
  thematicAnalysis : Prop
  triangulation : Prop
  memberChecking : Prop
  negativeCaseAnalysis : Prop

def EthnographicAnalysisClosed {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    (A : EthnographicAnalysisPackage F P I) : Prop :=
  A.codingScheme ∧ A.thematicAnalysis ∧ A.triangulation ∧
  A.memberChecking ∧ A.negativeCaseAnalysis

structure EthnographicAnalysisEvidence {F : FieldworkDesignPackage}
    {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    (A : EthnographicAnalysisPackage F P I) where
  codingSchemeClosed : A.codingScheme
  thematicAnalysisClosed : A.thematicAnalysis
  triangulationClosed : A.triangulation
  memberCheckingClosed : A.memberChecking
  negativeCaseAnalysisClosed : A.negativeCaseAnalysis

theorem ethnographic_analysis_closed_from_evidence
    {F : FieldworkDesignPackage} {P : ParticipantObservationProtocolPackage F}
    {I : InterviewMethodPackage F P}
    (A : EthnographicAnalysisPackage F P I) (E : EthnographicAnalysisEvidence A) :
    EthnographicAnalysisClosed A :=
  And.intro E.codingSchemeClosed
    (And.intro E.thematicAnalysisClosed
      (And.intro E.triangulationClosed
        (And.intro E.memberCheckingClosed E.negativeCaseAnalysisClosed)))

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse