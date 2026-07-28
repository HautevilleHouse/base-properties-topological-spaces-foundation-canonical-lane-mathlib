import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TopologicalSpacesFoundationCanonicalLaneLean

structure SeparationAxiomsPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Defined : Prop
  t1Defined : Prop
  hausdorffDefined : Prop
  regularDefined : Prop
  normalDefined : Prop

structure SeparationAxiomsEvidence (P : SeparationAxiomsPackage) where
  t0DefinedClosed : P.t0Defined
  t1DefinedClosed : P.t1Defined
  hausdorffDefinedClosed : P.hausdorffDefined
  regularDefinedClosed : P.regularDefined
  normalDefinedClosed : P.normalDefined

def SeparationAxiomsClosed (P : SeparationAxiomsPackage) : Prop :=
  P.t0Defined ∧ P.t1Defined ∧ P.hausdorffDefined ∧ P.regularDefined ∧ P.normalDefined

theorem separation_axioms_closed_from_evidence (P : SeparationAxiomsPackage) (E : SeparationAxiomsEvidence P) :
    SeparationAxiomsClosed P := by
  exact And.intro E.t0DefinedClosed
    (And.intro E.t1DefinedClosed (And.intro E.hausdorffDefinedClosed (And.intro E.regularDefinedClosed E.normalDefinedClosed)))

end TopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse