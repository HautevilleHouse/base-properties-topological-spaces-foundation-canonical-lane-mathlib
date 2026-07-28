import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceDescription : String
  constrainedClosureDefinition : String
  closureProof : String

def theoremStatement : TheoremStatement :=
  {
    sourceDescription := "Base Properties Topological Spaces Foundation"
    constrainedClosureDefinition := "ConstrainedBaseTopologyClosure = bridgeClosed ∧ gateClosed"
    closureProof := "constrained_base_topology_endgame"
  }

theorem constrained_base_topology_endgame_holds (A : AdmissibleClass) :
    ConstrainedBaseTopologyClosure A :=
  constrained_base_topology_endgame A

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse