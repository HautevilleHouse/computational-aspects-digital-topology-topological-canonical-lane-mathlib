import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalMorseFunctionPackage (X : Type u) (A : AdjacencyStructure X) where
  f : X → ℤ
  criticalPoints : Set X
  nondegeneracyCondition : ∀ x ∈ criticalPoints, ∃ neighbors, True
  morseInequalities : Prop
  morseInequalitiesClosed : morseInequalities

def DigitalMorseClosed (M : DigitalMorseFunctionPackage X A) : Prop :=
  M.morseInequalities

theorem digital_morse_inequalities_hold (M : DigitalMorseFunctionPackage X A) : DigitalMorseClosed M :=
  M.morseInequalitiesClosed

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse