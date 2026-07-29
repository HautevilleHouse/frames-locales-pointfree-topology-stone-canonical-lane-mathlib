import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure LocaleRegularityPackage (F : FramePackage) where
  regularProperty : Prop
  closedUnderMeet : Prop
  interpolation : Prop
  regularPropertyClosed : regularProperty
  closedUnderMeetClosed : closedUnderMeet
  interpolationClosed : interpolation

structure LocaleRegularityEvidence {F : FramePackage} (R : LocaleRegularityPackage F) where
  regularPropertyClosed : R.regularPropertyClosed
  closedUnderMeetClosed : R.closedUnderMeetClosed
  interpolationClosed : R.interpolationClosed

def LocaleRegularityClosed {F : FramePackage} (R : LocaleRegularityPackage F) : Prop :=
  R.regularProperty ∧ R.closedUnderMeet ∧ R.interpolation

theorem locale_regularity_closed_from_evidence
    {F : FramePackage} (R : LocaleRegularityPackage F) (E : LocaleRegularityEvidence R) :
    LocaleRegularityClosed R := by
  exact And.intro E.regularPropertyClosed
    (And.intro E.closedUnderMeetClosed E.interpolationClosed)

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse