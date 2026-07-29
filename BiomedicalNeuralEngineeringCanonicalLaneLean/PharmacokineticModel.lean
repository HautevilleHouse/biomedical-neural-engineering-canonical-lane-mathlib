import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  concentrationFunction : Prop
  doseInput : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  concentrationFunctionClosed : P.concentrationFunction
  doseInputClosed : P.doseInput

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.concentrationFunction ∧ P.doseInput

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage) (E : PharmacokineticModelEvidence P) :
    PharmacokineticModelClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.concentrationFunctionClosed E.doseInputClosed)))

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
