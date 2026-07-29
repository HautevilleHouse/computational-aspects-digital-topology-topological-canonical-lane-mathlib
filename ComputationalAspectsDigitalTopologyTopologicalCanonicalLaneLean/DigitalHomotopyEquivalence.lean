import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalHomotopyEquivalence (X Y : Type u) (A : AdjacencyStructure X) (B : AdjacencyStructure Y) where
  f : X → Y
  g : Y → X
  fContinuous : DigitalContinuityClosed f A B
  gContinuous : DigitalContinuityClosed g B A
  homotopyEquivCondition : Prop
  homotopyEquivConditionClosed : homotopyEquivCondition

def DigitalHomotopyEquivalent (X Y : Type u) (A : AdjacencyStructure X) (B : AdjacencyStructure Y) : Prop :=
  ∃ h : DigitalHomotopyEquivalence X Y A B, True

theorem digital_homotopy_equiv_closed (h : DigitalHomotopyEquivalence X Y A B) : DigitalContinuityClosed h.f A B :=
  h.fContinuous

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse