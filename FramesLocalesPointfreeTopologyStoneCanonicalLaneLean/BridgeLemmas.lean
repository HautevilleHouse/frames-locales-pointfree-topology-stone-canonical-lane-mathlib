import FramesLocalesPointfreeTopologyStoneCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FrameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse