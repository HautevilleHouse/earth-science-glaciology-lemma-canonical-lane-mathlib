import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IceSheetDynamicsPackage where
  basalSlidingLaw : Prop
  iceFlowModel : Prop
  massBalanceEquation : Prop
  stressStrainRelation : Prop

structure IceSheetDynamicsEvidence (D : IceSheetDynamicsPackage) where
  basalSlidingLawClosed : D.basalSlidingLaw
  iceFlowModelClosed : D.iceFlowModel
  massBalanceEquationClosed : D.massBalanceEquation
  stressStrainRelationClosed : D.stressStrainRelation

def IceSheetDynamicsClosed (D : IceSheetDynamicsPackage) : Prop :=
  D.basalSlidingLaw ∧ D.iceFlowModel ∧ D.massBalanceEquation ∧ D.stressStrainRelation

theorem ice_sheet_dynamics_closed_from_evidence
    (D : IceSheetDynamicsPackage) (E : IceSheetDynamicsEvidence D) :
    IceSheetDynamicsClosed D := by
  exact And.intro E.basalSlidingLawClosed
    (And.intro E.iceFlowModelClosed
      (And.intro E.massBalanceEquationClosed E.stressStrainRelationClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse