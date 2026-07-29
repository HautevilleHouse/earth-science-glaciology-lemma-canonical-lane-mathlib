import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure SeaLevelEquationPackage where
  iceSheetContribution : Prop
  thermalExpansion : Prop
  glacialIsostaticAdjustment : Prop
  terrestrialWaterStorage : Prop

structure SeaLevelEquationEvidence (S : SeaLevelEquationPackage) where
  iceSheetContributionClosed : S.iceSheetContribution
  thermalExpansionClosed : S.thermalExpansion
  glacialIsostaticAdjustmentClosed : S.glacialIsostaticAdjustment
  terrestrialWaterStorageClosed : S.terrestrialWaterStorage

def SeaLevelEquationClosed (S : SeaLevelEquationPackage) : Prop :=
  S.iceSheetContribution ∧ S.thermalExpansion ∧ S.glacialIsostaticAdjustment ∧ S.terrestrialWaterStorage

theorem sea_level_equation_closed_from_evidence
    (S : SeaLevelEquationPackage) (E : SeaLevelEquationEvidence S) :
    SeaLevelEquationClosed S := by
  exact And.intro E.iceSheetContributionClosed
    (And.intro E.thermalExpansionClosed
      (And.intro E.glacialIsostaticAdjustmentClosed E.terrestrialWaterStorageClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse