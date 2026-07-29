import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BiomedicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BiomedicalAdmittedObject where
  space : BiomedicalSpace
  compartmentModelValid : Prop
  pharmacokineticIdentified : Prop
  diagnosticInferenceClosed : Prop
  survivalEndpointReached : Prop
  conclusion : pharmacokineticIdentified ∧ diagnosticInferenceClosed ∧ survivalEndpointReached

structure BiomedicalEndgameState where
  object : BiomedicalAdmittedObject

def BiomedicalWitnessClosed (O : BiomedicalAdmittedObject) : Prop :=
  O.conclusion

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse