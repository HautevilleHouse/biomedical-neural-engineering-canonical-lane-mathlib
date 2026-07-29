import BiomedicalNeuralEngineeringCanonicalLaneLean.RateConstants

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  transferRates : Type u
  initialConcentrations : Type v
  differentialEquations : Prop
  conservationOfMass : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  differentialEquationsClosed : C.differentialEquations
  conservationOfMassClosed : C.conservationOfMass

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.differentialEquations ∧ C.conservationOfMass

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.differentialEquationsClosed E.conservationOfMassClosed

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse