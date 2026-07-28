import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure ConnectednessPackage (X : TopologicalSpacePackage) where
  isConnected : Prop
  clopenSetCondition : Prop

structure ConnectednessEvidence {X : TopologicalSpacePackage} (C : ConnectednessPackage X) where
  isConnectedClosed : C.isConnected
  clopenSetConditionClosed : C.clopenSetCondition

def ConnectednessClosed {X : TopologicalSpacePackage} (C : ConnectednessPackage X) : Prop :=
  C.isConnected ∧ C.clopenSetCondition

theorem connectedness_closed_from_evidence {X : TopologicalSpacePackage} (C : ConnectednessPackage X) (E : ConnectednessEvidence C) : ConnectednessClosed C := by
  exact And.intro E.isConnectedClosed E.clopenSetConditionClosed

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse