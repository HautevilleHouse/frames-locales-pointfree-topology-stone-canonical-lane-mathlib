import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Category.Frame
import Mathlib.Order.CompleteLattice

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure FrameObject where
  carrier : Type u
  frameStructure : Frame carrier
  finiteMeetDistributive : frameStructure.FiniteMeetDistributive
  arbitraryJoinDistributive : frameStructure.ArbitraryJoinDistributive

structure FrameMorphism where
  source : FrameObject
  target : FrameObject
  map : source.carrier → target.carrier
  preservesFiniteMeets : map preservesFiniteMeets
  preservesArbitraryJoins : map preservesArbitraryJoins

theorem frame_completeness (F : FrameObject) : CompleteLattice F.carrier := by
  exact F.frameStructure.toCompleteLattice

theorem frame_morphism_identity (F : FrameObject) : FrameMorphism.mk F F id := by
  refine { source := F, target := F, map := id, preservesFiniteMeets := ?_, preservesArbitraryJoins := ?_ }
  · intro a b; rfl
  · intro s; rfl

def FrameClosed (F : FrameObject) : Prop :=
  F.finiteMeetDistributive ∧ F.arbitraryJoinDistributive

theorem frame_closed_from_object (F : FrameObject) : FrameClosed F := by
  exact And.intro F.finiteMeetDistributive F.arbitraryJoinDistributive

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse