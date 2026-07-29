import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.FrameSpectralDuality

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure StoneRepresentationPackage (A : AdmissibleClass) (D : FrameSpectralDualityPackage A) where
  stoneSpace : Type u
  stoneTopology : TopologicalSpace stoneSpace
  compact : Prop
  hausdorff : Prop
  totallyDisconnected : Prop
  dualToFrame : Type v
  representationEquivalence : Prop

structure StoneRepresentationEvidence (A : AdmissibleClass) (D : FrameSpectralDualityPackage A)
    (R : StoneRepresentationPackage A D) where
  compactClosed : R.compact
  hausdorffClosed : R.hausdorff
  totallyDisconnectedClosed : R.totallyDisconnected
  representationEquivalenceClosed : R.representationEquivalence

def StoneRepresentationClosed (A : AdmissibleClass) (D : FrameSpectralDualityPackage A)
    (R : StoneRepresentationPackage A D) : Prop :=
  R.compact ∧ R.hausdorff ∧ R.totallyDisconnected ∧ R.representationEquivalence

theorem stone_representation_closed_from_evidence
    (A : AdmissibleClass) (D : FrameSpectralDualityPackage A) (R : StoneRepresentationPackage A D)
    (E : StoneRepresentationEvidence A D R) : StoneRepresentationClosed A D R := by
  exact And.intro E.compactClosed (And.intro E.hausdorffClosed
    (And.intro E.totallyDisconnectedClosed E.representationEquivalenceClosed))

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse