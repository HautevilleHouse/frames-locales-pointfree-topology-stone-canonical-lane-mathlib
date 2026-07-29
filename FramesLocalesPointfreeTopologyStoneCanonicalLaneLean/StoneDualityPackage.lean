import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.PointfreeTopologyPackage

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure StoneSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  compact : CompactSpace carrier
  hausdorff : T2Space carrier
  totallyDisconnected : TotallyDisconnectedSpace carrier

structure StoneDuality where
  booleanAlgebraCorrespondence : Prop
  stoneSpaceToFrame : StoneSpace → Option Frame
  frameToStoneSpace : Frame → Option StoneSpace
  dualityTheoremHolds : Prop

structure StoneDualityEvidence (D : StoneDuality) where
  booleanAlgebraCorrespondenceClosed : D.booleanAlgebraCorrespondence
  dualityTheoremClosed : D.dualityTheoremHolds

def StoneDualityClosed (D : StoneDuality) : Prop :=
  D.booleanAlgebraCorrespondence ∧ D.dualityTheoremHolds

theorem stone_duality_closed_from_evidence (D : StoneDuality) (E : StoneDualityEvidence D) : StoneDualityClosed D := by
  exact And.intro E.booleanAlgebraCorrespondenceClosed E.dualityTheoremClosed

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse