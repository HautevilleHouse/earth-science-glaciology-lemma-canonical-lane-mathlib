import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IsostaticAdjustmentPackage where
  lithosphereFlexure : Prop
  mantleViscosity : ℝ
  relaxationTime : ℝ
  seaLevelEquation : Prop

structure IsostaticAdjustmentEvidence (I : IsostaticAdjustmentPackage) where
  lithosphereFlexureClosed : I.lithosphereFlexure
  mantleViscosityClosed : I.mantleViscosity > 0
  relaxationTimeClosed : I.relaxationTime > 0
  seaLevelEquationClosed : I.seaLevelEquation

def IsostaticAdjustmentClosed (I : IsostaticAdjustmentPackage) : Prop :=
  I.lithosphereFlexure ∧ I.mantleViscosity > 0 ∧ I.relaxationTime > 0 ∧ I.seaLevelEquation

theorem isostatic_adjustment_closed_from_evidence (I : IsostaticAdjustmentPackage) (E : IsostaticAdjustmentEvidence I) :
    IsostaticAdjustmentClosed I := by
  exact And.intro E.lithosphereFlexureClosed
    (And.intro E.mantleViscosityClosed
      (And.intro E.relaxationTimeClosed E.seaLevelEquationClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse