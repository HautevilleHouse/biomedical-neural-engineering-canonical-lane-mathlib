import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalNeuralEngineeringCanonicalLaneLean.CompartmentModel

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure PharmacokineticPDE (M : CompartmentModel) where
  absorptionRate : ℝ
  eliminationRate : ℝ
  diffusionMatrix : Matrix ℝ M.compartments M.compartments
  concentrationEquation : Prop
  initialConditionMatched : Prop
  solutionExists : Prop

structure PharmacokineticPDEEvidence {M : CompartmentModel} (P : PharmacokineticPDE M) where
  concentrationEquationClosed : P.concentrationEquation
  initialConditionMatchedClosed : P.initialConditionMatched
  solutionExistsClosed : P.solutionExists

def PharmacokineticPDEClosed {M : CompartmentModel} (P : PharmacokineticPDE M) : Prop :=
  P.concentrationEquation ∧ P.initialConditionMatched ∧ P.solutionExists

theorem pharmacokinetic_pde_closed_from_evidence {M : CompartmentModel} (P : PharmacokineticPDE M) (E : PharmacokineticPDEEvidence P) : PharmacokineticPDEClosed P :=
  And.intro E.concentrationEquationClosed (And.intro E.initialConditionMatchedClosed E.solutionExistsClosed)

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
