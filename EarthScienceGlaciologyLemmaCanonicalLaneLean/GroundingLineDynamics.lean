import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure GroundingLineDynamicsPackage where
  flotationCondition : Prop
  groundingLineMigration : Prop
  buttressingStress : Prop

def GroundingLineDynamicsClosed (G : GroundingLineDynamicsPackage) : Prop :=
  G.flotationCondition ∧ G.groundingLineMigration ∧ G.buttressingStress

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse