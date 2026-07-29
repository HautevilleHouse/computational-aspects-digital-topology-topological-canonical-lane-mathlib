import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean

structure DigitalHomotopyFramework where
  grid : DigitalGrid
  digitalPath : grid.gridPoints → grid.gridPoints → Prop
  digitalHomotopyEquiv : Prop
  digitalFundamentalGroup : Type u

structure DigitalHomotopyEvidence (H : DigitalHomotopyFramework) where
  digitalPathClosed : ∀ x : H.grid.gridPoints, H.digitalPath x x
  digitalHomotopyEquivClosed : H.digitalHomotopyEquiv

def DigitalHomotopyClosed (H : DigitalHomotopyFramework) : Prop :=
  (∀ x : H.grid.gridPoints, H.digitalPath x x) ∧ H.digitalHomotopyEquiv

theorem digital_homotopy_closed_from_evidence (H : DigitalHomotopyFramework)
    (E : DigitalHomotopyEvidence H) : DigitalHomotopyClosed H := by
  exact And.intro E.digitalPathClosed E.digitalHomotopyEquivClosed

end ComputationalAspectsDigitalTopologyTopologicalCanonicalLaneLean
end HautevilleHouse