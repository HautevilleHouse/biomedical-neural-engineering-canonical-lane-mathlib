import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  compartmentCount : Nat
  rateConstants : Prop
  centralCompartmentVolume : Prop
  peripheralCompartmentVolume : Prop
  absorptionRate : Prop
  eliminationRate : Prop

structure CompartmentModelEvidence (P : CompartmentModelPackage) where
  compartmentCountClosed : P.compartmentCount > 0
  rateConstantsClosed : P.rateConstants
  centralCompartmentVolumeClosed : P.centralCompartmentVolume
  peripheralCompartmentVolumeClosed : P.peripheralCompartmentVolume
  absorptionRateClosed : P.absorptionRate
  eliminationRateClosed : P.eliminationRate

def CompartmentModelClosed (P : CompartmentModelPackage) : Prop :=
  P.compartmentCount > 0 ∧ P.rateConstants ∧ P.centralCompartmentVolume ∧
  P.peripheralCompartmentVolume ∧ P.absorptionRate ∧ P.eliminationRate

theorem compartment_model_closed_from_evidence (P : CompartmentModelPackage)
    (E : CompartmentModelEvidence P) : CompartmentModelClosed P := by
  exact And.intro E.compartmentCountClosed
    (And.intro E.rateConstantsClosed
      (And.intro E.centralCompartmentVolumeClosed
        (And.intro E.peripheralCompartmentVolumeClosed
          (And.intro E.absorptionRateClosed E.eliminationRateClosed))))

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse