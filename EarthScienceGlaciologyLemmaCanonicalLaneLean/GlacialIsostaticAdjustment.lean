import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure GlacialIsostaticAdjustmentPackage where
  mantleViscosityModel : Prop
  surfaceLoadModel : Prop
  reboundTimescale : Prop
  seaLevelEquation : Prop

structure GlacialIsostaticAdjustmentEvidence (G : GlacialIsostaticAdjustmentPackage) where
  mantleViscosityModelClosed : G.mantleViscosityModel
  surfaceLoadModelClosed : G.surfaceLoadModel
  reboundTimescaleClosed : G.reboundTimescale
  seaLevelEquationClosed : G.seaLevelEquation

def GlacialIsostaticAdjustmentClosed (G : GlacialIsostaticAdjustmentPackage) : Prop :=
  G.mantleViscosityModel ∧ G.surfaceLoadModel ∧ G.reboundTimescale ∧ G.seaLevelEquation

theorem glacial_isostatic_adjustment_closed_from_evidence
    (G : GlacialIsostaticAdjustmentPackage) (E : GlacialIsostaticAdjustmentEvidence G) :
    GlacialIsostaticAdjustmentClosed G := by
  exact And.intro E.mantleViscosityModelClosed
    (And.intro E.surfaceLoadModelClosed
      (And.intro E.reboundTimescaleClosed E.seaLevelEquationClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse