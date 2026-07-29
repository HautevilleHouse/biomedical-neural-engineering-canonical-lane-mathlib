import HautevilleHouse.BiomedicalNeuralEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
