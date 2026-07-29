import BiomedicalNeuralEngineeringCanonicalLaneLean.HazardFunctions

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure SurvivalAnalysisPackage where
  survivalFunction : Prop
  hazardFunction : Prop
  censoringMechanism : Prop
  proportionalHazards : Prop
  kaplanMeierEstimator : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  survivalFunctionClosed : S.survivalFunction
  hazardFunctionClosed : S.hazardFunction
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.survivalFunction ∧ S.hazardFunction ∧ S.censoringMechanism ∧
  S.proportionalHazards ∧ S.kaplanMeierEstimator

theorem survival_analysis_closed_from_evidence
    (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.survivalFunctionClosed
    (And.intro E.hazardFunctionClosed
      (And.intro E.censoringMechanismClosed
        (And.intro E.proportionalHazardsClosed E.kaplanMeierEstimatorClosed)))

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse