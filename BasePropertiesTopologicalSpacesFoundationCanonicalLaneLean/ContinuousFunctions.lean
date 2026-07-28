import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure ContinuousFunctionPackage (X Y : TopologicalSpacePackage) where
  mapping : X.carrier → Y.carrier
  continuityCondition : Prop

structure ContinuousFunctionEvidence {X Y : TopologicalSpacePackage} (F : ContinuousFunctionPackage X Y) where
  continuityClosed : F.continuityCondition

def ContinuousFunctionClosed {X Y : TopologicalSpacePackage} (F : ContinuousFunctionPackage X Y) : Prop :=
  F.continuityCondition

theorem continuous_function_closed_from_evidence {X Y : TopologicalSpacePackage} (F : ContinuousFunctionPackage X Y) (E : ContinuousFunctionEvidence F) : ContinuousFunctionClosed F := by
  exact E.continuityClosed

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse