import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure PointfreeCompactnessPackage (F : FramePackage) where
  compactElement : F.carrier
  coverProperty : Prop
  finiteSubcover : Prop
  coverPropertyClosed : coverProperty
  finiteSubcoverClosed : finiteSubcover

structure PointfreeCompactnessEvidence {F : FramePackage} (C : PointfreeCompactnessPackage F) where
  coverPropertyClosed : C.coverPropertyClosed
  finiteSubcoverClosed : C.finiteSubcoverClosed

def PointfreeCompactnessClosed {F : FramePackage} (C : PointfreeCompactnessPackage F) : Prop :=
  C.coverProperty ∧ C.finiteSubcover

theorem pointfree_compactness_closed_from_evidence
    {F : FramePackage} (C : PointfreeCompactnessPackage F) (E : PointfreeCompactnessEvidence C) :
    PointfreeCompactnessClosed C := by
  exact And.intro E.coverPropertyClosed E.finiteSubcoverClosed

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse