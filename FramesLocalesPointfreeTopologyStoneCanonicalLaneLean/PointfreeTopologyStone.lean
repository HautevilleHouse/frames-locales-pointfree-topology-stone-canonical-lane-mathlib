import canonicalLaneMathlib.AdmissibleClass
import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.LocaleStoneDuality

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure PointfreeTopologyPackage where
  locale : LocalePackage
  continuousMap : Type u
  category : Prop

structure PointfreeTopologyEvidence (P : PointfreeTopologyPackage) where
  localeClosed : LocaleClosed P.locale
  categoryClosed : P.category

def PointfreeTopologyClosed (P : PointfreeTopologyPackage) : Prop :=
  LocaleClosed P.locale ∧ P.category

theorem pointfree_topology_closed_from_evidence (P : PointfreeTopologyPackage) (E : PointfreeTopologyEvidence P) : PointfreeTopologyClosed P := by
  exact And.intro E.localeClosed E.categoryClosed

structure StoneSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  compact : Prop
  hausdorff : Prop
  totallyDisconnected : Prop
  zeroDimensional : Prop

structure StoneSpaceEvidence (S : StoneSpacePackage) where
  compactClosed : S.compact
  hausdorffClosed : S.hausdorff
  totallyDisconnectedClosed : S.totallyDisconnected
  zeroDimensionalClosed : S.zeroDimensional

def StoneSpaceClosed (S : StoneSpacePackage) : Prop :=
  S.compact ∧ S.hausdorff ∧ S.totallyDisconnected ∧ S.zeroDimensional

theorem stone_space_closed_from_evidence (S : StoneSpacePackage) (E : StoneSpaceEvidence S) : StoneSpaceClosed S := by
  exact And.intro E.compactClosed
    (And.intro E.hausdorffClosed
      (And.intro E.totallyDisconnectedClosed E.zeroDimensionalClosed))

structure StoneDualityTheoremPackage where
  stoneSpace : StoneSpacePackage
  booleanAlgebra : Type u
  dualEquivalence : Prop

structure StoneDualityTheoremEvidence (T : StoneDualityTheoremPackage) where
  stoneSpaceClosed : StoneSpaceClosed T.stoneSpace
  dualEquivalenceClosed : T.dualEquivalence

def StoneDualityTheoremClosed (T : StoneDualityTheoremPackage) : Prop :=
  StoneSpaceClosed T.stoneSpace ∧ T.dualEquivalence

theorem stone_duality_theorem_closed_from_evidence (T : StoneDualityTheoremPackage) (E : StoneDualityTheoremEvidence T) : StoneDualityTheoremClosed T := by
  exact And.intro E.stoneSpaceClosed E.dualEquivalenceClosed

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse