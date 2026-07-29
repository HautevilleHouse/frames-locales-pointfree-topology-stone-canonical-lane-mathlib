import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure FrameSpectralDualityPackage (A : AdmissibleClass) where
  frameSpectral : Prop
  dualIsStoneSpace : Prop
  isomorphismConstructed : Prop
  dualityProof : isomorphismConstructed

structure FrameSpectralDualityEvidence (A : AdmissibleClass) (P : FrameSpectralDualityPackage A) where
  frameSpectralClosed : P.frameSpectral
  dualIsStoneSpaceClosed : P.dualIsStoneSpace
  isomorphismConstructedClosed : P.isomorphismConstructed

def FrameSpectralDualityClosed (A : AdmissibleClass) (P : FrameSpectralDualityPackage A) : Prop :=
  P.frameSpectral ∧ P.dualIsStoneSpace ∧ P.isomorphismConstructed

theorem frame_spectral_duality_closed_from_evidence
    (A : AdmissibleClass) (P : FrameSpectralDualityPackage A) (E : FrameSpectralDualityEvidence A P) :
    FrameSpectralDualityClosed A P := by
  exact And.intro E.frameSpectralClosed (And.intro E.dualIsStoneSpaceClosed E.isomorphismConstructedClosed)

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse