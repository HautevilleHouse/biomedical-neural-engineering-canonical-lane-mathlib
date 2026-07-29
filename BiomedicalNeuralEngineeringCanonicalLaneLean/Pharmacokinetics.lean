import BiomedicalNeuralEngineeringCanonicalLaneLean.CompartmentModels

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure PharmacokineticPackage (C : CompartmentModelPackage) where
  absorptionRate : Prop
  eliminationRate : Prop
  volumeOfDistribution : Prop
  clearance : Prop
  bioavailability : Prop

structure PharmacokineticEvidence {C : CompartmentModelPackage}
    (P : PharmacokineticPackage C) where
  absorptionRateClosed : P.absorptionRate
  eliminationRateClosed : P.eliminationRate
  volumeOfDistributionClosed : P.volumeOfDistribution
  clearanceClosed : P.clearance
  bioavailabilityClosed : P.bioavailability

def PharmacokineticClosed {C : CompartmentModelPackage}
    (P : PharmacokineticPackage C) : Prop :=
  P.absorptionRate ∧ P.eliminationRate ∧ P.volumeOfDistribution ∧
  P.clearance ∧ P.bioavailability

theorem pharmacokinetic_closed_from_evidence
    {C : CompartmentModelPackage} (P : PharmacokineticPackage C)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.eliminationRateClosed
      (And.intro E.volumeOfDistributionClosed
        (And.intro E.clearanceClosed E.bioavailabilityClosed)))

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse