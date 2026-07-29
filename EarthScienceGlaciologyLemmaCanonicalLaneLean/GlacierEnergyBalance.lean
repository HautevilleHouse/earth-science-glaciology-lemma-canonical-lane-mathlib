import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure GlacierEnergyBalancePackage where
  surfaceEnergyFluxes : Prop
  englacialTemperatureProfile : ℝ → ℝ
  basalGeothermalHeatFlux : ℝ
  firnCompactionModel : Prop

structure GlacierEnergyBalanceEvidence (G : GlacierEnergyBalancePackage) where
  surfaceEnergyFluxesClosed : G.surfaceEnergyFluxes
  englacialTemperatureProfileClosed : G.englacialTemperatureProfile = G.englacialTemperatureProfile
  basalGeothermalHeatFluxClosed : G.basalGeothermalHeatFlux > 0
  firnCompactionModelClosed : G.firnCompactionModel

def GlacierEnergyBalanceClosed (G : GlacierEnergyBalancePackage) : Prop :=
  G.surfaceEnergyFluxes ∧ G.basalGeothermalHeatFlux > 0 ∧ G.firnCompactionModel

theorem glacier_energy_balance_closed_from_evidence (G : GlacierEnergyBalancePackage) (E : GlacierEnergyBalanceEvidence G) :
    GlacierEnergyBalanceClosed G := by
  exact And.intro E.surfaceEnergyFluxesClosed
    (And.intro E.basalGeothermalHeatFluxClosed E.firnCompactionModelClosed)

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse