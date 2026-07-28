import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure CompactnessPackage (X : TopologicalSpacePackage) where
  isCompact : Prop
  openCoverCondition : Prop

structure CompactnessEvidence {X : TopologicalSpacePackage} (C : CompactnessPackage X) where
  isCompactClosed : C.isCompact
  openCoverConditionClosed : C.openCoverCondition

def CompactnessClosed {X : TopologicalSpacePackage} (C : CompactnessPackage X) : Prop :=
  C.isCompact ∧ C.openCoverCondition

theorem compactness_closed_from_evidence {X : TopologicalSpacePackage} (C : CompactnessPackage X) (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.isCompactClosed E.openCoverConditionClosed

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse