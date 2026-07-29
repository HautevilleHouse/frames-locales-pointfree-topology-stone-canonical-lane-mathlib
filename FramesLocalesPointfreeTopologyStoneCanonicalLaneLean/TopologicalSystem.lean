import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.FrameSpatialization

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStone

structure TopologicalSystemPackage where
  frame : Type u
  locale : Type v
  continuousMapFrame : Prop
  points : Type w
  openNeighbourhoods : Prop
  convergenceCondition : Prop

structure TopologicalSystemEvidence (T : TopologicalSystemPackage) where
  continuousMapFrameClosed : T.continuousMapFrame
  openNeighbourhoodsClosed : T.openNeighbourhoods
  convergenceConditionClosed : T.convergenceCondition

def TopologicalSystemClosed (T : TopologicalSystemPackage) : Prop :=
  T.continuousMapFrame ∧ T.openNeighbourhoods ∧ T.convergenceCondition

theorem topological_system_closed_from_evidence
    (T : TopologicalSystemPackage) (E : TopologicalSystemEvidence T) : TopologicalSystemClosed T := by
  exact And.intro E.continuousMapFrameClosed
    (And.intro E.openNeighbourhoodsClosed E.convergenceConditionClosed)

end FramesLocalesPointfreeTopologyStone
end HautevilleHouse