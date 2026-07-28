import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

def ConstrainedTopologicalBaseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topological_base_endgame (A : AdmissibleClass) :
    ConstrainedTopologicalBaseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse