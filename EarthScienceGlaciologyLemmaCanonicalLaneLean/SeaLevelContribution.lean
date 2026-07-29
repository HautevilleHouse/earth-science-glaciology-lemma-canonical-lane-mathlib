import HautevilleHouse.EarthScienceGlaciologyLemmaCanonicalLaneLean.CalvingFrontDynamics

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure SeaLevelContributionPackage {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} {G : GroundedIceStabilityPackage D}
    (C : CalvingFrontDynamicsPackage G) where
  groundedIceDischarge : Prop
  floatingIceMelt : Prop
  thermalExpansionOffset : Prop
  seaLevelRiseRate : Prop

structure SeaLevelContributionEvidence {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} {G : GroundedIceStabilityPackage D}
    {C : CalvingFrontDynamicsPackage G} (S : SeaLevelContributionPackage C) where
  groundedIceDischargeClosed : S.groundedIceDischarge
  floatingIceMeltClosed : S.floatingIceMelt
  thermalExpansionOffsetClosed : S.thermalExpansionOffset
  seaLevelRiseRateClosed : S.seaLevelRiseRate

def SeaLevelContributionClosed {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} {G : GroundedIceStabilityPackage D}
    {C : CalvingFrontDynamicsPackage G} (S : SeaLevelContributionPackage C) : Prop :=
  S.groundedIceDischarge ∧ S.floatingIceMelt ∧ S.thermalExpansionOffset ∧ S.seaLevelRiseRate

theorem sea_level_contribution_closed_from_evidence
    {M : IceSheetMassBalancePackage} {D : IceDynamicsPDEPackage M}
    {G : GroundedIceStabilityPackage D} {C : CalvingFrontDynamicsPackage G}
    (S : SeaLevelContributionPackage C) (E : SeaLevelContributionEvidence S) :
    SeaLevelContributionClosed S := by
  exact And.intro E.groundedIceDischargeClosed
    (And.intro E.floatingIceMeltClosed
      (And.intro E.thermalExpansionOffsetClosed E.seaLevelRiseRateClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
