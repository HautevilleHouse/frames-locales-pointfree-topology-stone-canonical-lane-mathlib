import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesPointfreeTopologyStoneCanonicalLaneLean

structure AdmissibleFrameObject where
  frame : Type u
  frameTopology : TopologicalSpace frame
  spatial : Prop
  sublocaleType : Type v
  spectral : Prop
  endModel : Type w
  endModelTopology : TopologicalSpace endModel
  stoneDualEquivalent : Prop
  conclusion : stoneDualEquivalent

structure AdmissibleClass where
  object : AdmissibleFrameObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FramesLocalesPointfreeTopologyStoneCanonicalLaneLean
end HautevilleHouse