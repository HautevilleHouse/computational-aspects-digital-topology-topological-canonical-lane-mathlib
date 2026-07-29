import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure AdmissibleClass where
  object : DigitalTopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DigitalTopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse
