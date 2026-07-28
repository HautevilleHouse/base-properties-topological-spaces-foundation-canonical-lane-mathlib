import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TopologicalSpacesFoundationCanonicalLaneLean

structure CompactnessPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  compactDefined : Prop
  heineBorelProperty : Prop
  finiteIntersectionProperty : Prop
  sequentialCompactness : Prop

structure CompactnessEvidence (P : CompactnessPackage) where
  compactDefinedClosed : P.compactDefined
  heineBorelPropertyClosed : P.heineBorelProperty
  finiteIntersectionPropertyClosed : P.finiteIntersectionProperty
  sequentialCompactnessClosed : P.sequentialCompactness

def CompactnessClosed (P : CompactnessPackage) : Prop :=
  P.compactDefined ∧ P.heineBorelProperty ∧ P.finiteIntersectionProperty ∧ P.sequentialCompactness

theorem compactness_closed_from_evidence (P : CompactnessPackage) (E : CompactnessEvidence P) :
    CompactnessClosed P := by
  exact And.intro E.compactDefinedClosed
    (And.intro E.heineBorelPropertyClosed (And.intro E.finiteIntersectionPropertyClosed E.sequentialCompactnessClosed))

end TopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse