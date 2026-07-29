import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IceSheetMassBalancePackage where
  surfaceMassBalance : Prop
  basalMelting : Prop
  calvingFlux : Prop
  totalMassBalance : Prop

structure IceSheetMassBalanceEvidence (M : IceSheetMassBalancePackage) where
  surfaceMassBalanceClosed : M.surfaceMassBalance
  basalMeltingClosed : M.basalMelting
  calvingFluxClosed : M.calvingFlux
  totalMassBalanceClosed : M.totalMassBalance

def IceSheetMassBalanceClosed (M : IceSheetMassBalancePackage) : Prop :=
  M.surfaceMassBalance ∧ M.basalMelting ∧ M.calvingFlux ∧ M.totalMassBalance

theorem ice_sheet_mass_balance_closed_from_evidence
    (M : IceSheetMassBalancePackage) (E : IceSheetMassBalanceEvidence M) :
    IceSheetMassBalanceClosed M := by
  exact And.intro E.surfaceMassBalanceClosed
    (And.intro E.basalMeltingClosed
      (And.intro E.calvingFluxClosed E.totalMassBalanceClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
