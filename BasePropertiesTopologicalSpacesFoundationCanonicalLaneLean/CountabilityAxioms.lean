import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.Connectedness

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure CountabilityAxiomsPackage where
  firstCountable : Prop
  secondCountable : Prop
  separable : Prop
  lindelof : Prop

structure CountabilityAxiomsEvidence (C : CountabilityAxiomsPackage) where
  firstCountable_closed : C.firstCountable
  secondCountable_closed : C.secondCountable
  separable_closed : C.separable
  lindelof_closed : C.lindelof

def CountabilityAxiomsClosed (C : CountabilityAxiomsPackage) : Prop :=
  C.firstCountable ∧ C.secondCountable ∧ C.separable ∧ C.lindelof

theorem countability_axioms_closed_from_evidence (C : CountabilityAxiomsPackage)
    (E : CountabilityAxiomsEvidence C) : CountabilityAxiomsClosed C :=
  And.intro E.firstCountable_closed
    (And.intro E.secondCountable_closed
      (And.intro E.separable_closed E.lindelof_closed))

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse