import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Category.Spectral
import Mathlib.Topology.Category.Stone

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure SpectralSpaceObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  quasiCompact : Prop
  sober : Prop
  coherent : Prop
  quasiCompactTerm : quasiCompact
  soberTerm : sober
  coherentTerm : coherent

structure SpectralMap (A B : SpectralSpaceObject) where
  map : A.carrier → B.carrier
  continuous : Continuous map
  spectral : IsSpectralMap map

theorem spectral_duality (S : SpectralSpaceObject) : StoneSpaceObject := by
  sorry

theorem spectral_to_stone (S : SpectralSpaceObject) : StoneRepresentation (regularCore S) := by
  sorry

def SpectralClosed (S : SpectralSpaceObject) : Prop := S.quasiCompact ∧ S.sober ∧ S.coherent

theorem spectral_closed_from_object (S : SpectralSpaceObject) (h : SpectralClosed S) : SpectralClosed S := h

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse