import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure ConstitutiveModelPackage where
  viscosityLaw : Prop
  basalSlidingLaw : Prop
  damageEvolution : Prop

def ConstitutiveModelClosed (C : ConstitutiveModelPackage) : Prop :=
  C.viscosityLaw ∧ C.basalSlidingLaw ∧ C.damageEvolution

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse