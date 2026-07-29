import EarthScienceGlaciologyLemmaCanonicalLaneLean.GlacierFlowlineModel

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure CalvingLawPackage {I : IceSheetDynamicsPackage}
    {F : GlacierFlowlineModelPackage I} where
  crevasseWaterDepth : Prop
  buoyancyForceBalance : Prop
  calvingRateFormula : Prop
  terminusPositionEvolution : Prop
  icebergProduction : Prop

structure CalvingLawEvidence {I : IceSheetDynamicsPackage}
    {F : GlacierFlowlineModelPackage I}
    (C : CalvingLawPackage F) where
  crevasseWaterDepthClosed : C.crevasseWaterDepth
  buoyancyForceBalanceClosed : C.buoyancyForceBalance
  calvingRateFormulaClosed : C.calvingRateFormula
  terminusPositionEvolutionClosed : C.terminusPositionEvolution
  icebergProductionClosed : C.icebergProduction

def CalvingLawClosed {I : IceSheetDynamicsPackage}
    {F : GlacierFlowlineModelPackage I}
    (C : CalvingLawPackage F) : Prop :=
  C.crevasseWaterDepth ∧ C.buoyancyForceBalance ∧
  C.calvingRateFormula ∧ C.terminusPositionEvolution ∧
  C.icebergProduction

theorem calving_law_closed_from_evidence
    {I : IceSheetDynamicsPackage} {F : GlacierFlowlineModelPackage I}
    (C : CalvingLawPackage F) (E : CalvingLawEvidence C) :
    CalvingLawClosed C := by
  exact And.intro E.crevasseWaterDepthClosed
    (And.intro E.buoyancyForceBalanceClosed
      (And.intro E.calvingRateFormulaClosed
        (And.intro E.terminusPositionEvolutionClosed
          E.icebergProductionClosed)))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse