import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.PointsInLocales

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStone

structure FrameSpatializationPackage {S : SobrificationPackage} where
  spatializationMap : Type u
  sobrietyCondition : Prop
  fixpointsOfSobrificationIsSpatial : Prop
  continuousRetractionViaSobrification : Prop

structure FrameSpatializationEvidence {S : SobrificationPackage} (F : FrameSpatializationPackage S) where
  sobrietyConditionClosed : F.sobrietyCondition
  fixpointsOfSobrificationIsSpatialClosed : F.fixpointsOfSobrificationIsSpatial
  continuousRetractionViaSobrificationClosed : F.continuousRetractionViaSobrification

def FrameSpatializationClosed {S : SobrificationPackage} (F : FrameSpatializationPackage S) : Prop :=
  F.sobrietyCondition ∧ F.fixpointsOfSobrificationIsSpatial ∧ F.continuousRetractionViaSobrification

theorem frame_spatialization_closed_from_evidence
    {S : SobrificationPackage} (F : FrameSpatializationPackage S)
    (E : FrameSpatializationEvidence F) : FrameSpatializationClosed F := by
  exact And.intro E.sobrietyConditionClosed
    (And.intro E.fixpointsOfSobrificationIsSpatialClosed E.continuousRetractionViaSobrificationClosed)

end FramesLocalesPointfreeTopologyStone
end HautevilleHouse