import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure MassConservationPackage where
  continuityEquation : Prop
  accumulationAblation : Prop
  calvingLaw : Prop

def MassConservationClosed (M : MassConservationPackage) : Prop :=
  M.continuityEquation ∧ M.accumulationAblation ∧ M.calvingLaw

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse