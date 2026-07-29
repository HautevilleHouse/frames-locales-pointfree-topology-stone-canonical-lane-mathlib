import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.LocalesPackage

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure PointfreeTopology where
  locale : Locale
  sobrietyCondition : Prop
  spatialCondition : Prop

structure PointfreeTopologyEvidence (P : PointfreeTopology) where
  localeEvidence : LocaleEvidence P.locale
  sobrietyHolds : P.sobrietyCondition
  spatialHolds : P.spatialCondition

def PointfreeTopologyClosed (P : PointfreeTopology) : Prop :=
  LocaleClosed P.locale ∧ P.sobrietyCondition ∧ P.spatialCondition

theorem pointfree_topology_closed_from_evidence (P : PointfreeTopology) (E : PointfreeTopologyEvidence P) : PointfreeTopologyClosed P := by
  refine And.intro (locale_closed_from_evidence P.locale E.localeEvidence) (And.intro E.sobrietyHolds E.spatialHolds)

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse