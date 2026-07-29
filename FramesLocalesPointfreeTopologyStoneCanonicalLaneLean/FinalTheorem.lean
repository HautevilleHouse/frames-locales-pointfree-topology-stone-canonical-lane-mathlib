import canonicalLaneMathlib.AdmissibleClass
import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.PointfreeTopologyStone
import BridgeLemmas
import GateLemmas

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

def ConstrainedStoneDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_stone_duality_endgame (A : AdmissibleClass) : ConstrainedStoneDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse