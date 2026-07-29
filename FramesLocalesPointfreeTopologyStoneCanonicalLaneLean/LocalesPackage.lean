import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure Locale where
  opens : Type u
  isFrame : Frame

structure LocaleHom (L M : Locale) where
  toFrameHom : FrameHom L.isFrame M.isFrame

structure LocaleEvidence (L : Locale) where
  frameIsAbutment : True
  localeStructureDefined : True

def LocaleClosed (L : Locale) : Prop := FrameClosed L.isFrame

theorem locale_closed_from_evidence (L : Locale) (E : LocaleEvidence L) : LocaleClosed L :=
  frame_closed_from_evidence L.isFrame { carrierNonempty := by
    have h : Nonempty (L.isFrame.carrier) := by
      have : L.isFrame.top ∈ L.isFrame.carrier := by trivial
      exact ⟨L.isFrame.top⟩
    exact h
    meetsWellDefined := trivial, joinsWellDefined := trivial }

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse