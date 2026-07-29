import HautevilleHouse.BiomedicalNeuralEngineeringCanonicalLaneLean.NeuralBridge

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
