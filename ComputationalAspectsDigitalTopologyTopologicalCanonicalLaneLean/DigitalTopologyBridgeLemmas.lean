import ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean.DigitalTopologyAdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.digitalStructure ∧ A.object.connectivity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse