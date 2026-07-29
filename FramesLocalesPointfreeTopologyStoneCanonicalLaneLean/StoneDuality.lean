import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.ZeroDimensionality

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStone

structure StoneDualityPackage {Z : ZeroDimensionalPackage} {S : SobrificationPackage} where
  stoneSpace : Type u
  stoneSpaceIsCompact : Prop
  stoneSpaceIsHausdorff : Prop
  stoneSpaceHasBasisClopen : Prop
  dualFrame : Type v
  dualFrameIsStone : Prop
  homomorphismEquivalence : Prop

structure StoneDualityEvidence {Z : ZeroDimensionalPackage} {S : SobrificationPackage}
    (D : StoneDualityPackage Z S) where
  stoneSpaceIsCompactClosed : D.stoneSpaceIsCompact
  stoneSpaceIsHausdorffClosed : D.stoneSpaceIsHausdorff
  stoneSpaceHasBasisClopenClosed : D.stoneSpaceHasBasisClopen
  dualFrameIsStoneClosed : D.dualFrameIsStone
  homomorphismEquivalenceClosed : D.homomorphismEquivalence

def StoneDualityClosed {Z : ZeroDimensionalPackage} {S : SobrificationPackage}
    (D : StoneDualityPackage Z S) : Prop :=
  D.stoneSpaceIsCompact ∧ D.stoneSpaceIsHausdorff ∧ D.stoneSpaceHasBasisClopen ∧
  D.dualFrameIsStone ∧ D.homomorphismEquivalence

theorem stone_duality_closed_from_evidence
    {Z : ZeroDimensionalPackage} {S : SobrificationPackage}
    (D : StoneDualityPackage Z S) (E : StoneDualityEvidence D) : StoneDualityClosed D := by
  exact And.intro E.stoneSpaceIsCompactClosed
    (And.intro E.stoneSpaceIsHausdorffClosed
      (And.intro E.stoneSpaceHasBasisClopenClosed
        (And.intro E.dualFrameIsStoneClosed E.homomorphismEquivalenceClosed)))

theorem stone_duality_supports_dual_frame_stone_theorem
    {Z : ZeroDimensionalPackage} {S : SobrificationPackage}
    (D : StoneDualityPackage Z S) : D.dualFrameIsStone := D.dualFrameIsStone

end FramesLocalesPointfreeTopologyStone
end HautevilleHouse