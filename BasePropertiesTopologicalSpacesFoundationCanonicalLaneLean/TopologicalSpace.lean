import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.MathlibObjects

/-!
# Topological Space Package
-/

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure TopologicalSpacePackage (M : TopologicalSpaceObj) where
  openSets : Set (Set M.carrier)
  openSetsClosed : ∀ s ∈ openSets, IsOpen s
  topologyGenerated : TopologicalSpace M.carrier = generateFrom openSets

default

structure TopologicalSpaceEvidence (M : TopologicalSpaceObj) (P : TopologicalSpacePackage M) where
  openSetsClosedComplete : ∀ s, IsOpen s → s ∈ P.openSets
  topologyGeneratedCorrect : TopologicalSpace M.carrier = generateFrom P.openSets

def TopologicalSpaceClosed (M : TopologicalSpaceObj) (P : TopologicalSpacePackage M) : Prop :=
  (∀ s ∈ P.openSets, IsOpen s) ∧ (∀ s, IsOpen s → s ∈ P.openSets) ∧
  (TopologicalSpace M.carrier = generateFrom P.openSets)

theorem topological_space_closed_from_evidence (M : TopologicalSpaceObj) (P : TopologicalSpacePackage M) 
    (E : TopologicalSpaceEvidence M P) : TopologicalSpaceClosed M P := by
  refine And.intro P.openSetsClosed (And.intro E.openSetsClosedComplete ?_)
  exact E.topologyGeneratedCorrect

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse