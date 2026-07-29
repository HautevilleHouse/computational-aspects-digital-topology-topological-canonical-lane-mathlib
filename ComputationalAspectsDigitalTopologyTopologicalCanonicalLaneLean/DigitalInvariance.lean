import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalInvariancePackage where
  dimension : ℕ
  invarianceProperty : Prop
  invarianceProof : Prop

structure DigitalInvarianceEvidence (I : DigitalInvariancePackage) where
  invariancePropertyClosed : I.invarianceProperty
  invarianceProofClosed : I.invarianceProof

def DigitalInvarianceClosed (I : DigitalInvariancePackage) : Prop :=
  I.invarianceProperty ∧ I.invarianceProof

theorem digital_invariance_closed_from_evidence (I : DigitalInvariancePackage)
    (E : DigitalInvarianceEvidence I) : DigitalInvarianceClosed I := by
  exact And.intro E.invariancePropertyClosed E.invarianceProofClosed

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse