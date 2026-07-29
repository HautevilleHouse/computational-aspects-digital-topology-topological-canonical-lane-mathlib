import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalTopologyAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  digitalStructure : Prop
  connectivity : Prop
  conclusion : digitalStructure ∧ connectivity

structure AdmissibleClass where
  object : DigitalTopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.digitalStructure ∧ A.object.connectivity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse