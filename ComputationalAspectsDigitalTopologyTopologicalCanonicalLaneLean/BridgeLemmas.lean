import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DigitalTopologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse
