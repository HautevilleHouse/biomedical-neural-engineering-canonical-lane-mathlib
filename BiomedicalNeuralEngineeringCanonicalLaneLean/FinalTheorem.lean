import BiomedicalNeuralEngineeringCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

def ConstrainedBiomedicalNeuralEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biomedical_neural_engineering_endgame (A : AdmissibleClass) :
    ConstrainedBiomedicalNeuralEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse