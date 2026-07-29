import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IceCorePaleoclimatologyPackage where
  ageDepthModel : Prop
  isotopeProxy : Prop
  accumulationRate : Prop
  gasTrappingModel : Prop

structure IceCorePaleoclimatologyEvidence (I : IceCorePaleoclimatologyPackage) where
  ageDepthModelClosed : I.ageDepthModel
  isotopeProxyClosed : I.isotopeProxy
  accumulationRateClosed : I.accumulationRate
  gasTrappingModelClosed : I.gasTrappingModel

def IceCorePaleoclimatologyClosed (I : IceCorePaleoclimatologyPackage) : Prop :=
  I.ageDepthModel ∧ I.isotopeProxy ∧ I.accumulationRate ∧ I.gasTrappingModel

theorem ice_core_paleoclimatology_closed_from_evidence
    (I : IceCorePaleoclimatologyPackage) (E : IceCorePaleoclimatologyEvidence I) :
    IceCorePaleoclimatologyClosed I := by
  exact And.intro E.ageDepthModelClosed
    (And.intro E.isotopeProxyClosed
      (And.intro E.accumulationRateClosed E.gasTrappingModelClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse