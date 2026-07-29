import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalDualityPackage (X : Type u) (A : AdjacencyStructure X) where
  dualAdjacency : AdjacencyStructure X
  dualityMap : X → X
  dualityIsInvolution : ∀ x : X, dualityMap (dualityMap x) = x
  dualityPreservesAdjacency : ∀ x y : X, A.adjacency x y → dualAdjacency.adjacency (dualityMap x) (dualityMap y)

def DigitalDualityClosed (D : DigitalDualityPackage X A) : Prop :=
  D.dualityIsInvolution ∧ D.dualityPreservesAdjacency

theorem digital_duality_closed (D : DigitalDualityPackage X A) : DigitalDualityClosed D :=
  And.intro D.dualityIsInvolution D.dualityPreservesAdjacency

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse