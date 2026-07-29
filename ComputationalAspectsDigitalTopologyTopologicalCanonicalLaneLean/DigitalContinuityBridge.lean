import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure MappingStructure where
  sourceGrid : DigitalGrid
  targetGrid : DigitalGrid
  mapping : sourceGrid.gridPoints → targetGrid.gridPoints
  continuityCondition : Prop

def mappingBridge (M : MappingStructure) : Prop :=
  M.continuityCondition

theorem mapping_bridge_from_admissible (M : MappingStructure) : mappingBridge M :=
  M.continuityCondition

def mappingGate (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem mapping_gate_from_admissible (A : AdmissibleClass) : mappingGate A :=
  A.gateWitness

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse