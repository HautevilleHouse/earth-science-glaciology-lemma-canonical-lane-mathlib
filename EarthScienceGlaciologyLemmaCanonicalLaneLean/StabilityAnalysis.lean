import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure StabilityPackage where
  groundingLineDynamics : Prop
  marineIceCliffInstability : Prop
  hydrofracturingModel : Prop
  retreatRateBound : Prop

structure StabilityEvidence (S : StabilityPackage) where
  groundingLineDynamicsClosed : S.groundingLineDynamics
  marineIceCliffInstabilityClosed : S.marineIceCliffInstability
  hydrofracturingModelClosed : S.hydrofracturingModel
  retreatRateBoundClosed : S.retreatRateBound

def StabilityClosed (S : StabilityPackage) : Prop :=
  S.groundingLineDynamics ∧ S.marineIceCliffInstability ∧ S.hydrofracturingModel ∧ S.retreatRateBound

theorem stability_closed_from_evidence (S : StabilityPackage) (E : StabilityEvidence S) :
    StabilityClosed S := by
  exact And.intro E.groundingLineDynamicsClosed
    (And.intro E.marineIceCliffInstabilityClosed
      (And.intro E.hydrofracturingModelClosed E.retreatRateBoundClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse