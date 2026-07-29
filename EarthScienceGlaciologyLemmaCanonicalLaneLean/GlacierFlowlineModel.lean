import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure GlacierFlowLineModelPackage where
  continuityEquation : Prop
  momentumBalance : Prop
  slidingLaw : Prop
  temperatureCoupling : Prop

structure GlacierFlowLineModelEvidence (G : GlacierFlowLineModelPackage) where
  continuityEquationClosed : G.continuityEquation
  momentumBalanceClosed : G.momentumBalance
  slidingLawClosed : G.slidingLaw
  temperatureCouplingClosed : G.temperatureCoupling

def GlacierFlowLineModelClosed (G : GlacierFlowLineModelPackage) : Prop :=
  G.continuityEquation ∧ G.momentumBalance ∧ G.slidingLaw ∧ G.temperatureCoupling

theorem glacier_flow_line_model_closed_from_evidence
    (G : GlacierFlowLineModelPackage) (E : GlacierFlowLineModelEvidence G) :
    GlacierFlowLineModelClosed G := by
  exact And.intro E.continuityEquationClosed
    (And.intro E.momentumBalanceClosed
      (And.intro E.slidingLawClosed E.temperatureCouplingClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse