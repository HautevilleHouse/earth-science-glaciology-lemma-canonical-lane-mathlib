import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGlaciologyLemmaCanonicalLaneLean

structure IceSheetFlowPackage where
  geometry : Type u
  topography : Type v
  basalShearStress : Type w
  flowLaw : Type x
  glacierGeometryDefined : Prop
  topographyKnown : Prop
  basalStressModel : Prop
  flowLawSelected : Prop

structure IceSheetFlowEvidence (I : IceSheetFlowPackage) where
  glacierGeometryDefinedClosed : I.glacierGeometryDefined
  topographyKnownClosed : I.topographyKnown
  basalStressModelClosed : I.basalStressModel
  flowLawSelectedClosed : I.flowLawSelected

def IceSheetFlowClosed (I : IceSheetFlowPackage) : Prop :=
  I.glacierGeometryDefined ∧ I.topographyKnown ∧ I.basalStressModel ∧ I.flowLawSelected

theorem ice_sheet_flow_closed_from_evidence (I : IceSheetFlowPackage) (E : IceSheetFlowEvidence I) : IceSheetFlowClosed I :=
  And.intro E.glacierGeometryDefinedClosed (And.intro E.topographyKnownClosed (And.intro E.basalStressModelClosed E.flowLawSelectedClosed))

end EarthScienceGlaciologyLemmaCanonicalLaneLean
end HautevilleHouse
