import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure GlaciologyAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  threeDimensional : Prop
  iceSheetModel : Prop
  conclusion : threeDimensional ∧ iceSheetModel

def GlaciologyWitnessClosed (O : GlaciologyAdmittedObject) : Prop :=
  O.conclusion

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse