import HautevilleHouse.EarthScienceGlaciologyLemmaCanonicalLaneLean.IceSheetMassBalance

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IceDynamicsPDEPackage (M : IceSheetMassBalancePackage) where
  stressStrainRelation : Prop
  slidingLaw : Prop
  continuityEquation : Prop
  temperatureEvolution : Prop

structure IceDynamicsPDEEvidence {M : IceSheetMassBalancePackage}
    (D : IceDynamicsPDEPackage M) where
  stressStrainRelationClosed : D.stressStrainRelation
  slidingLawClosed : D.slidingLaw
  continuityEquationClosed : D.continuityEquation
  temperatureEvolutionClosed : D.temperatureEvolution

def IceDynamicsPDEClosed {M : IceSheetMassBalancePackage}
    (D : IceDynamicsPDEPackage M) : Prop :=
  D.stressStrainRelation ∧ D.slidingLaw ∧ D.continuityEquation ∧ D.temperatureEvolution

theorem ice_dynamics_pde_closed_from_evidence
    {M : IceSheetMassBalancePackage} (D : IceDynamicsPDEPackage M)
    (E : IceDynamicsPDEEvidence D) : IceDynamicsPDEClosed D := by
  exact And.intro E.stressStrainRelationClosed
    (And.intro E.slidingLawClosed
      (And.intro E.continuityEquationClosed E.temperatureEvolutionClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
