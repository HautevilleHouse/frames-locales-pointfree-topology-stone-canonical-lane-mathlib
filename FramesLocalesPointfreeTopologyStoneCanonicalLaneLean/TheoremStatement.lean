import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure StoneAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  zeroDimensional : Prop
  compact : Prop
  hausdorff : Prop
  stoneDualityHolds : Prop
  conclusion : stoneDualityHolds

def StoneWitnessClosed (O : StoneAdmittedObject) : Prop :=
  O.stoneDualityHolds

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse