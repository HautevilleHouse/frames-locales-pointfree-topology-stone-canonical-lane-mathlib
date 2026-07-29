import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.TopologicalSystem

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStone

structure SobrificationPackage {T : TopologicalSystemPackage} where
  sobrificationId : Type u
  denseInclusion : Prop
  sobrietyAxiom : Prop
  universalProperty : Prop

structure SobrificationEvidence {T : TopologicalSystemPackage} (S : SobrificationPackage T) where
  denseInclusionClosed : S.denseInclusion
  sobrietyAxiomClosed : S.sobrietyAxiom
  universalPropertyClosed : S.universalProperty

def SobrificationClosed {T : TopologicalSystemPackage} (S : SobrificationPackage T) : Prop :=
  S.denseInclusion ∧ S.sobrietyAxiom ∧ S.universalProperty

theorem sobrification_closed_from_evidence
    {T : TopologicalSystemPackage} (S : SobrificationPackage T)
    (E : SobrificationEvidence S) : SobrificationClosed S := by
  exact And.intro E.denseInclusionClosed
    (And.intro E.sobrietyAxiomClosed E.universalPropertyClosed)

end FramesLocalesPointfreeTopologyStone
end HautevilleHouse