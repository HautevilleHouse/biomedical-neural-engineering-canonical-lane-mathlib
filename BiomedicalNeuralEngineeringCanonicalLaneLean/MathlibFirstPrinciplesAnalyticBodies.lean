import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.ODE
import Mathlib.Probability.Distribution

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure MathlibAvailableAnalyticBodies where
  odeSolverAvailable : Prop
  probabilityDistributionAvailable : Prop
  statisticalTestAvailable : Prop
  odeSolverAvailableTerm : odeSolverAvailable
  probabilityDistributionAvailableTerm : probabilityDistributionAvailable
  statisticalTestAvailableTerm : statisticalTestAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { odeSolverAvailable := True,
    probabilityDistributionAvailable := True,
    statisticalTestAvailable := True,
    odeSolverAvailableTerm := trivial,
    probabilityDistributionAvailableTerm := trivial,
    statisticalTestAvailableTerm := trivial }

structure MathlibBiomedicalAnalyticBodyObligations where
  compartmentModelODE : Prop
  diagnosticLikelihood : Prop
  survivalCoxModel : Prop
  compartmentModelODETerm : compartmentModelODE
  diagnosticLikelihoodTerm : diagnosticLikelihood
  survivalCoxModelTerm : survivalCoxModel

structure MathlibFirstPrinciplesBiomedicalPackage where
  availableBodiesChecked : MathlibAvailableAnalyticBodies
  analyticBodies : MathlibBiomedicalAnalyticBodyObligations
  bodyToPrimitiveCompatibility : Prop
  bodyToPrimitiveCompatibilityTerm : bodyToPrimitiveCompatibility

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse