import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IceFlowPDEPackage where
  iceSheetGeometry : Type u
  temperatureField : Type v
  stressTensor : Type w
  iceFlowEquation : Prop
  boundaryConditions : Prop
  initialIceThickness : Prop

def IceFlowPDEClosed (F : IceFlowPDEPackage) : Prop :=
  F.iceFlowEquation ∧ F.boundaryConditions ∧ F.initialIceThickness

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse