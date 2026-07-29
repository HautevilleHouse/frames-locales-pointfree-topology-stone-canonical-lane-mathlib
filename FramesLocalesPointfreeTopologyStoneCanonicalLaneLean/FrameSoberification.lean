import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure SoberificationPackage (F : FramePackage) where
  sobrietySpace : Type u
  sobrietyTopology : TopologicalSpace sobrietySpace
  pointRetraction : Prop
  sobrietyReflection : Prop
  sobrietyReflectionClosed : sobrietyReflection

structure SoberificationEvidence {F : FramePackage} (S : SoberificationPackage F) where
  pointRetractionClosed : S.pointRetraction
  sobrietyReflectionClosed : S.sobrietyReflectionClosed

def SoberificationClosed {F : FramePackage} (S : SoberificationPackage F) : Prop :=
  S.pointRetraction ∧ S.sobrietyReflection

theorem soberification_closed_from_evidence
    {F : FramePackage} (S : SoberificationPackage F) (E : SoberificationEvidence S) :
    SoberificationClosed S := by
  exact And.intro E.pointRetractionClosed E.sobrietyReflectionClosed

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse