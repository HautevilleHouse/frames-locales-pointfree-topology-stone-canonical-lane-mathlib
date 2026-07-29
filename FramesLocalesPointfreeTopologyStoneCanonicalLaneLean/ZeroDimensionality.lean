import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.FrameSpatialization

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStone

structure ZeroDimensionalPackage {F : FrameSpatializationPackage} where
  clopenBasis : Prop
  zeroDimensionalSpace : Prop
  compactnessImplication : Prop
  stoneSpaceCharacterization : Prop

structure ZeroDimensionalEvidence {F : FrameSpatializationPackage}
    (Z : ZeroDimensionalPackage F) where
  clopenBasisClosed : Z.clopenBasis
  zeroDimensionalSpaceClosed : Z.zeroDimensionalSpace
  compactnessImplicationClosed : Z.compactnessImplication
  stoneSpaceCharacterizationClosed : Z.stoneSpaceCharacterization

def ZeroDimensionalClosed {F : FrameSpatializationPackage}
    (Z : ZeroDimensionalPackage F) : Prop :=
  Z.clopenBasis ∧ Z.zeroDimensionalSpace ∧ Z.compactnessImplication ∧ Z.stoneSpaceCharacterization

theorem zero_dimensional_closed_from_evidence
    {F : FrameSpatializationPackage} (Z : ZeroDimensionalPackage F)
    (E : ZeroDimensionalEvidence Z) : ZeroDimensionalClosed Z := by
  exact And.intro E.clopenBasisClosed
    (And.intro E.zeroDimensionalSpaceClosed
      (And.intro E.compactnessImplicationClosed E.stoneSpaceCharacterizationClosed))

end FramesLocalesPointfreeTopologyStone
end HautevilleHouse