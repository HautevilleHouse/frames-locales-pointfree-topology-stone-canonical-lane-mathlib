import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.StoneDualityPackage

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure StoneRepresentationTheorem where
  booleanAlgebra : Type u
  stoneSpace : StoneSpace
  representationIsIsomorphism : Prop
  theoremProved : Prop

structure StoneRepresentationEvidence (S : StoneRepresentationTheorem) where
  representationIsIsomorphismClosed : S.representationIsIsomorphism
  theoremProvedClosed : S.theoremProved

def StoneRepresentationClosed (S : StoneRepresentationTheorem) : Prop :=
  S.representationIsIsomorphism ∧ S.theoremProved

theorem stone_representation_closed_from_evidence (S : StoneRepresentationTheorem) (E : StoneRepresentationEvidence S) : StoneRepresentationClosed S := by
  exact And.intro E.representationIsIsomorphismClosed E.theoremProvedClosed

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse