import HautevilleHouse.EarthScienceGlaciologyLemmaCanonicalLaneLean.IceDynamicsPDE

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure GroundedIceStabilityPackage {M : IceSheetMassBalancePackage}
    (D : IceDynamicsPDEPackage M) where
  basalShearStress : Prop
  effectivePressure : Prop
  tillStrength : Prop
  stabilityCriterion : Prop

structure GroundedIceStabilityEvidence {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} (G : GroundedIceStabilityPackage D) where
  basalShearStressClosed : G.basalShearStress
  effectivePressureClosed : G.effectivePressure
  tillStrengthClosed : G.tillStrength
  stabilityCriterionClosed : G.stabilityCriterion

def GroundedIceStabilityClosed {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} (G : GroundedIceStabilityPackage D) : Prop :=
  G.basalShearStress ∧ G.effectivePressure ∧ G.tillStrength ∧ G.stabilityCriterion

theorem grounded_ice_stability_closed_from_evidence
    {M : IceSheetMassBalancePackage} {D : IceDynamicsPDEPackage M}
    (G : GroundedIceStabilityPackage D) (E : GroundedIceStabilityEvidence G) :
    GroundedIceStabilityClosed G := by
  exact And.intro E.basalShearStressClosed
    (And.intro E.effectivePressureClosed
      (And.intro E.tillStrengthClosed E.stabilityCriterionClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
