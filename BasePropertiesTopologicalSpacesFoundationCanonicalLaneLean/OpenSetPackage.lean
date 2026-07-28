import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TopologicalSpacesFoundationCanonicalLaneLean

structure OpenSetPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  openSetsDefined : Prop
  closureDefined : Prop
  interiorDefined : Prop
  boundaryDefined : Prop

structure OpenSetEvidence (P : OpenSetPackage) where
  openSetsDefinedClosed : P.openSetsDefined
  closureDefinedClosed : P.closureDefined
  interiorDefinedClosed : P.interiorDefined
  boundaryDefinedClosed : P.boundaryDefined

def OpenSetClosed (P : OpenSetPackage) : Prop :=
  P.openSetsDefined ∧ P.closureDefined ∧ P.interiorDefined ∧ P.boundaryDefined

theorem open_set_closed_from_evidence (P : OpenSetPackage) (E : OpenSetEvidence P) :
    OpenSetClosed P := by
  exact And.intro E.openSetsDefinedClosed
    (And.intro E.closureDefinedClosed (And.intro E.interiorDefinedClosed E.boundaryDefinedClosed))

end TopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse