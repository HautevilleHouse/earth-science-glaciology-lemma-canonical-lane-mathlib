import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  energyConservation : Prop
  phaseChangeModel : Prop
  englacialHydrology : Prop

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.energyConservation ∧ T.phaseChangeModel ∧ T.englacialHydrology

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse