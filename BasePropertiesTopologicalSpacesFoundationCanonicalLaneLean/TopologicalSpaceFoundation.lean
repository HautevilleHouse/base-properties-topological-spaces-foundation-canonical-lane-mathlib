import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure TopologicalSpaceFoundationPackage where
  openSets : Prop
  closureOperator : Prop
  interiorOperator : Prop
  boundaryOperator : Prop
  basisCondition : Prop

structure TopologicalSpaceFoundationEvidence (P : TopologicalSpaceFoundationPackage) where
  openSetsClosed : P.openSets
  closureOperatorClosed : P.closureOperator
  interiorOperatorClosed : P.interiorOperator
  boundaryOperatorClosed : P.boundaryOperator
  basisConditionClosed : P.basisCondition

def TopologicalSpaceFoundationClosed (P : TopologicalSpaceFoundationPackage) : Prop :=
  P.openSets ∧ P.closureOperator ∧ P.interiorOperator ∧ P.boundaryOperator ∧ P.basisCondition

theorem topological_space_foundation_closed_from_evidence (P : TopologicalSpaceFoundationPackage) (E : TopologicalSpaceFoundationEvidence P) : TopologicalSpaceFoundationClosed P := by
  exact And.intro E.openSetsClosed (And.intro E.closureOperatorClosed (And.intro E.interiorOperatorClosed (And.intro E.boundaryOperatorClosed E.basisConditionClosed)))

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse