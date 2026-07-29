import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalContinuityPackage (X Y : Type u) (A : AdjacencyStructure X) (B : AdjacencyStructure Y) where
  mapFn : X → Y
  continuityCondition : ∀ x y : X, A.adjacency x y → B.adjacency (mapFn x) (mapFn y)
  continuityConditionClosed : continuityCondition

def DigitalContinuityClosed (f : X → Y) (A : AdjacencyStructure X) (B : AdjacencyStructure Y) : Prop :=
  ∀ x y : X, A.adjacency x y → B.adjacency (f x) (f y)

theorem digital_continuity_closed (pkg : DigitalContinuityPackage X Y A B) : DigitalContinuityClosed pkg.mapFn A B :=
  pkg.continuityConditionClosed

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse