import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TopologicalSpacesFoundationCanonicalLaneLean

structure ConnectednessPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  connectedDefined : Prop
  pathConnectedDefined : Prop
  componentsDefined : Prop
  locallyConnectedDefined : Prop

structure ConnectednessEvidence (P : ConnectednessPackage) where
  connectedDefinedClosed : P.connectedDefined
  pathConnectedDefinedClosed : P.pathConnectedDefined
  componentsDefinedClosed : P.componentsDefined
  locallyConnectedDefinedClosed : P.locallyConnectedDefined

def ConnectednessClosed (P : ConnectednessPackage) : Prop :=
  P.connectedDefined ∧ P.pathConnectedDefined ∧ P.componentsDefined ∧ P.locallyConnectedDefined

theorem connectedness_closed_from_evidence (P : ConnectednessPackage) (E : ConnectednessEvidence P) :
    ConnectednessClosed P := by
  exact And.intro E.connectedDefinedClosed
    (And.intro E.pathConnectedDefinedClosed (And.intro E.componentsDefinedClosed E.locallyConnectedDefinedClosed))

end TopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse