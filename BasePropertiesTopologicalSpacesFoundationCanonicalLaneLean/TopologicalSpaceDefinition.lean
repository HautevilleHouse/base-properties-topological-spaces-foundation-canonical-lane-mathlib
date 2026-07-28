import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  openSets : Set (Set carrier)
  openSetAxioms : Prop

structure TopologicalSpaceEvidence (T : TopologicalSpacePackage) where
  openSetAxiomsClosed : T.openSetAxioms

def TopologicalSpaceClosed (T : TopologicalSpacePackage) : Prop :=
  T.openSetAxioms

theorem topological_space_closed_from_evidence (T : TopologicalSpacePackage) (E : TopologicalSpaceEvidence T) : TopologicalSpaceClosed T := by
  exact E.openSetAxiomsClosed

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse