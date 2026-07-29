import EarthScienceGlaciologyLemmaCanonicalLaneLean.CalvingLaw

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure BasalHydrologyPackage {I : IceSheetDynamicsPackage}
    {F : GlacierFlowlineModelPackage I} {C : CalvingLawPackage F} where
  waterPressureField : Prop
  subglacialDrainageSystem : Prop
  waterStorageCapacity : Prop
  hydraulicConductivity : Prop
  cavityFormation : Prop

structure BasalHydrologyEvidence {I : IceSheetDynamicsPackage}
    {F : GlacierFlowlineModelPackage I} {C : CalvingLawPackage F}
    (B : BasalHydrologyPackage C) where
  waterPressureFieldClosed : B.waterPressureField
  subglacialDrainageSystemClosed : B.subglacialDrainageSystem
  waterStorageCapacityClosed : B.waterStorageCapacity
  hydraulicConductivityClosed : B.hydraulicConductivity
  cavityFormationClosed : B.cavityFormation

def BasalHydrologyClosed {I : IceSheetDynamicsPackage}
    {F : GlacierFlowlineModelPackage I} {C : CalvingLawPackage F}
    (B : BasalHydrologyPackage C) : Prop :=
  B.waterPressureField ∧ B.subglacialDrainageSystem ∧
  B.waterStorageCapacity ∧ B.hydraulicConductivity ∧
  B.cavityFormation

theorem basal_hydrology_closed_from_evidence
    {I : IceSheetDynamicsPackage} {F : GlacierFlowlineModelPackage I}
    {C : CalvingLawPackage F} (B : BasalHydrologyPackage C)
    (E : BasalHydrologyEvidence B) : BasalHydrologyClosed B := by
  exact And.intro E.waterPressureFieldClosed
    (And.intro E.subglacialDrainageSystemClosed
      (And.intro E.waterStorageCapacityClosed
        (And.intro E.hydraulicConductivityClosed
          E.cavityFormationClosed)))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse