import BiomedicalNeuralEngineeringCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure AdmissibleClass where
  object : BiomedicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiomedicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse