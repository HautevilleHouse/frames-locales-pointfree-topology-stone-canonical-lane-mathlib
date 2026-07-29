import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Category.Locale
import Mathlib.Topology.Category.Frame

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure LocaleObject where
  carrier : FrameObject
  localeStructure : Locale carrier
  points : Type u
  pointsFormat : PointsSpecification

structure PointsSpecification where
  pointSet : Type u
  pointToFrameHom : pointSet → FrameMorphism (from : FrameObject) (to : carrier)
  surjectiveToSpectrum : Surjective pointToFrameHom

theorem locale_adjunction (L : LocaleObject) : Locale.adjunction L.carrier := by
  infer_instance

theorem locale_sober (L : LocaleObject) : L.localeStructure.Sober := by
  infer_instance

def LocaleClosed (L : LocaleObject) : Prop :=
  L.carrier.frameStructure.IsComplete ∧ L.localeStructure.Sober

theorem locale_closed_from_sober (L : LocaleObject) : LocaleClosed L := by
  refine And.intro ?_ L.localeStructure.Sober
  exact L.carrier.frameStructure.IsComplete

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse