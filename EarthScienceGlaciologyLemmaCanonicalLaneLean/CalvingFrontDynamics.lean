import HautevilleHouse.EarthScienceGlaciologyLemmaCanonicalLaneLean.GroundedIceStability

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure CalvingFrontDynamicsPackage {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} (G : GroundedIceStabilityPackage D) where
  crevassePropagation : Prop
  iceCliffFailure : Prop
  melangeBackstress : Prop
  calvingRateParameterized : Prop

structure CalvingFrontDynamicsEvidence {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} {G : GroundedIceStabilityPackage D}
    (C : CalvingFrontDynamicsPackage G) where
  crevassePropagationClosed : C.crevassePropagation
  iceCliffFailureClosed : C.iceCliffFailure
  melangeBackstressClosed : C.melangeBackstress
  calvingRateParameterizedClosed : C.calvingRateParameterized

def CalvingFrontDynamicsClosed {M : IceSheetMassBalancePackage}
    {D : IceDynamicsPDEPackage M} {G : GroundedIceStabilityPackage D}
    (C : CalvingFrontDynamicsPackage G) : Prop :=
  C.crevassePropagation ∧ C.iceCliffFailure ∧ C.melangeBackstress ∧ C.calvingRateParameterized

theorem calving_front_dynamics_closed_from_evidence
    {M : IceSheetMassBalancePackage} {D : IceDynamicsPDEPackage M}
    {G : GroundedIceStabilityPackage D} (C : CalvingFrontDynamicsPackage G)
    (E : CalvingFrontDynamicsEvidence C) : CalvingFrontDynamicsClosed C := by
  exact And.intro E.crevassePropagationClosed
    (And.intro E.iceCliffFailureClosed
      (And.intro E.melangeBackstressClosed E.calvingRateParameterizedClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
