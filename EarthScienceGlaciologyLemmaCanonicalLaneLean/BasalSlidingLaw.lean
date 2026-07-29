import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure BasalSlidingPackage where
  tillProperties : Type u
  waterPressure : Type v
  slidingVelocity : Type w
  effectivePressure : Type x
  tillRheologyDefined : Prop
  waterPressureField : Prop
  slidingLawFormulated : Prop
  effectivePressureRelation : Prop

structure BasalSlidingEvidence (B : BasalSlidingPackage) where
  tillRheologyDefinedClosed : B.tillRheologyDefined
  waterPressureFieldClosed : B.waterPressureField
  slidingLawFormulatedClosed : B.slidingLawFormulated
  effectivePressureRelationClosed : B.effectivePressureRelation

def BasalSlidingClosed (B : BasalSlidingPackage) : Prop :=
  B.tillRheologyDefined ∧ B.waterPressureField ∧ B.slidingLawFormulated ∧ B.effectivePressureRelation

theorem basal_sliding_closed_from_evidence (B : BasalSlidingPackage) (E : BasalSlidingEvidence B) : BasalSlidingClosed B :=
  And.intro E.tillRheologyDefinedClosed (And.intro E.waterPressureFieldClosed (And.intro E.slidingLawFormulatedClosed E.effectivePressureRelationClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
