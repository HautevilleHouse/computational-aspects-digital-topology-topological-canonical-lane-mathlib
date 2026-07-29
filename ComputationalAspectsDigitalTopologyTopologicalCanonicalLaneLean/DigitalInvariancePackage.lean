import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalInvariancePackage where
  homotopyInvariance : Prop
  homeomorphismInvariance : Prop
  simpleHomotopyEquivalence : Prop

structure DigitalInvarianceEvidence (P : DigitalInvariancePackage) where
  homotopyInvarianceClosed : P.homotopyInvariance
  homeomorphismInvarianceClosed : P.homeomorphismInvariance
  simpleHomotopyEquivalenceClosed : P.simpleHomotopyEquivalence

def DigitalInvarianceClosed (P : DigitalInvariancePackage) : Prop :=
  P.homotopyInvariance ∧ P.homeomorphismInvariance ∧ P.simpleHomotopyEquivalence

theorem digital_invariance_closed_from_evidence (P : DigitalInvariancePackage) (E : DigitalInvarianceEvidence P) :
    DigitalInvarianceClosed P := by
  exact And.intro E.homotopyInvarianceClosed (And.intro E.homeomorphismInvarianceClosed E.simpleHomotopyEquivalenceClosed)

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse
