import HautevilleHouse.BiomedicalNeuralEngineeringCanonicalLaneLean.NeuralGate

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

def ConstrainedNeuralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_endgame (A : AdmissibleClass) : ConstrainedNeuralClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
