import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure FramePackage where
  carrier : Type u
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  top : carrier
  bot : carrier
  meetAssoc : ∀ a b c : carrier, meet (meet a b) c = meet a (meet b c)
  meetComm : ∀ a b : carrier, meet a b = meet b a
  joinAssoc : ∀ a b c : carrier, join (join a b) c = join a (join b c)
  joinComm : ∀ a b : carrier, join a b = join b a
  absorb1 : ∀ a b : carrier, meet a (join a b) = a
  absorb2 : ∀ a b : carrier, join a (meet a b) = a
  distribInf : ∀ a b c : carrier, meet a (join b c) = join (meet a b) (meet a c)
  topMeet : ∀ a : carrier, meet a top = a
  botJoin : ∀ a : carrier, join a bot = a

structure FrameEvidence (F : FramePackage) where
  meetAssocClosed : F.meetAssoc
  meetCommClosed : F.meetComm
  joinAssocClosed : F.joinAssoc
  joinCommClosed : F.joinComm
  absorb1Closed : F.absorb1
  absorb2Closed : F.absorb2
  distribInfClosed : F.distribInf
  topMeetClosed : F.topMeet
  botJoinClosed : F.botJoin

def FrameClosed (F : FramePackage) : Prop :=
  F.meetAssoc ∧ F.meetComm ∧ F.joinAssoc ∧ F.joinComm ∧
  F.absorb1 ∧ F.absorb2 ∧ F.distribInf ∧ F.topMeet ∧ F.botJoin

theorem frame_closed_from_evidence (F : FramePackage) (E : FrameEvidence F) : FrameClosed F := by
  exact And.intro E.meetAssocClosed
    (And.intro E.meetCommClosed
      (And.intro E.joinAssocClosed
        (And.intro E.joinCommClosed
          (And.intro E.absorb1Closed
            (And.intro E.absorb2Closed
              (And.intro E.distribInfClosed
                (And.intro E.topMeetClosed E.botJoinClosed)))))))

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse