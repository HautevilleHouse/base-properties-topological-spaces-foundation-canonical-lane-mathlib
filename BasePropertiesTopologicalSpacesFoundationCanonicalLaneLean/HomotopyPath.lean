import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure HomotopyPathPackage (X : TopologicalSpacePackage) where
  path : Type (max u 1)
  homotopy : Type (max u 2)
  pathConnected : Prop
  fundamentalGroup : Prop

structure HomotopyPathEvidence {X : TopologicalSpacePackage} (H : HomotopyPathPackage X) where
  pathConnectedClosed : H.pathConnected
  fundamentalGroupClosed : H.fundamentalGroup

def HomotopyPathClosed {X : TopologicalSpacePackage} (H : HomotopyPathPackage X) : Prop :=
  H.pathConnected ∧ H.fundamentalGroup

theorem homotopy_path_closed_from_evidence {X : TopologicalSpacePackage} (H : HomotopyPathPackage X) (E : HomotopyPathEvidence H) : HomotopyPathClosed H := by
  exact And.intro E.pathConnectedClosed E.fundamentalGroupClosed

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse