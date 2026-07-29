import BiomedicalNeuralEngineeringCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiomedicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse