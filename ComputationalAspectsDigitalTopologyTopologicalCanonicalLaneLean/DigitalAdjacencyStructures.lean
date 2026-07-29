import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure AdjacencyStructure (X : Type u) where
  points : Set X
  adjacency : X → X → Prop
  reflexive : ∀ x ∈ points, adjacency x x
  symmetric : ∀ x y ∈ points, adjacency x y → adjacency y x

def adjacencyClosed (A : AdjacencyStructure X) : Prop :=
  A.reflexive ∧ A.symmetric

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse