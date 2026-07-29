import canonicalLaneMathlib.AdmissibleClass
import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.FramePackage

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure LocalePackage where
  frame : FramePackage
  opens : Type u
  frameOfOpens : FramePackage
  isomorphism : Prop

structure LocaleEvidence (L : LocalePackage) where
  frameClosed : FrameClosed L.frame
  opensFrameClosed : FrameClosed L.frameOfOpens
  isomorphismClosed : L.isomorphism

def LocaleClosed (L : LocalePackage) : Prop :=
  FrameClosed L.frame ∧ FrameClosed L.frameOfOpens ∧ L.isomorphism

theorem locale_closed_from_evidence (L : LocalePackage) (E : LocaleEvidence L) : LocaleClosed L := by
  exact And.intro E.frameClosed (And.intro E.opensFrameClosed E.isomorphismClosed)

structure StoneDualityPackage where
  locale : LocalePackage
  soberSpace : Type u
  spatialLocale : Type u
  dualEquivalence : Prop

structure StoneDualityEvidence (S : StoneDualityPackage) where
  localeClosed : LocaleClosed S.locale
  dualEquivalenceClosed : S.dualEquivalence

def StoneDualityClosed (S : StoneDualityPackage) : Prop :=
  LocaleClosed S.locale ∧ S.dualEquivalence

theorem stone_duality_closed_from_evidence (S : StoneDualityPackage) (E : StoneDualityEvidence S) : StoneDualityClosed S := by
  exact And.intro E.localeClosed E.dualEquivalenceClosed

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse