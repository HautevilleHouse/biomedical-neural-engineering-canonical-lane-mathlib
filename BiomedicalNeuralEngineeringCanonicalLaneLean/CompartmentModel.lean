import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  membraneCapacitance : Prop
  ionChannelConductance : Prop
  synapticInputCurrent : Prop
  axialResistance : Prop
  membranePotentialDynamics : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  membraneCapacitanceClosed : C.membraneCapacitance
  ionChannelConductanceClosed : C.ionChannelConductance
  synapticInputCurrentClosed : C.synapticInputCurrent
  axialResistanceClosed : C.axialResistance
  membranePotentialDynamicsClosed : C.membranePotentialDynamics

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.membraneCapacitance ∧ C.ionChannelConductance ∧ C.synapticInputCurrent ∧ C.axialResistance ∧ C.membranePotentialDynamics

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.ionChannelConductanceClosed
      (And.intro E.synapticInputCurrentClosed
        (And.intro E.axialResistanceClosed E.membranePotentialDynamicsClosed)))

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse
