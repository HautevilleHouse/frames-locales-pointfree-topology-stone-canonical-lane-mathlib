import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.StoneRepresentation

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure PointfreeTopologyStoneDualityPackage (A : AdmissibleClass) (D : FrameSpectralDualityPackage A)
    (R : StoneRepresentationPackage A D) where
  functorToStone : Type u → Type v
  naturality : Prop
  equivalenceEstablished : Prop

def PointfreeTopologyStoneDualityClosed (A : AdmissibleClass) (D : FrameSpectralDualityPackage A)
    (R : StoneRepresentationPackage A D) (P : PointfreeTopologyStoneDualityPackage A D R) : Prop :=
  P.naturality ∧ P.equivalenceEstablished

theorem pointfree_topology_stone_duality_closed (A : AdmissibleClass) (D : FrameSpectralDualityPackage A)
    (R : StoneRepresentationPackage A D) (P : PointfreeTopologyStoneDualityPackage A D R)
    (n : P.naturality) (e : P.equivalenceEstablished) : PointfreeTopologyStoneDualityClosed A D R P := by
  exact And.intro n e

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse