import BiomedicalNeuralEngineeringCanonicalLaneLean.SpikeTrains

namespace HautevilleHouse
namespace BiomedicalNeuralEngineeringCanonicalLaneLean

structure NeuralSignalProcessingPackage where
  spikeDetection : Prop
  filtering : Prop
  featureExtraction : Prop
  decoding : Prop
  noiseModel : Prop

structure NeuralSignalProcessingEvidence (N : NeuralSignalProcessingPackage) where
  spikeDetectionClosed : N.spikeDetection
  filteringClosed : N.filtering
  featureExtractionClosed : N.featureExtraction
  decodingClosed : N.decoding
  noiseModelClosed : N.noiseModel

def NeuralSignalProcessingClosed (N : NeuralSignalProcessingPackage) : Prop :=
  N.spikeDetection ∧ N.filtering ∧ N.featureExtraction ∧
  N.decoding ∧ N.noiseModel

theorem neural_signal_processing_closed_from_evidence
    (N : NeuralSignalProcessingPackage) (E : NeuralSignalProcessingEvidence N) :
    NeuralSignalProcessingClosed N := by
  exact And.intro E.spikeDetectionClosed
    (And.intro E.filteringClosed
      (And.intro E.featureExtractionClosed
        (And.intro E.decodingClosed E.noiseModelClosed)))

end BiomedicalNeuralEngineeringCanonicalLaneLean
end HautevilleHouse