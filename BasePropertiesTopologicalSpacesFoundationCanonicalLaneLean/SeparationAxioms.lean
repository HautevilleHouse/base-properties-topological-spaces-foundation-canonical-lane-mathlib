import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure SeparationAxiomsPackage (X : TopologicalSpacePackage) where
  hausdorff : Prop
  normal : Prop
  regular : Prop

structure SeparationAxiomsEvidence {X : TopologicalSpacePackage} (S : SeparationAxiomsPackage X) where
  hausdorffClosed : S.hausdorff
  normalClosed : S.normal
  regularClosed : S.regular

def SeparationAxiomsClosed {X : TopologicalSpacePackage} (S : SeparationAxiomsPackage X) : Prop :=
  S.hausdorff ∧ S.normal ∧ S.regular

theorem separation_axioms_closed_from_evidence {X : TopologicalSpacePackage} (S : SeparationAxiomsPackage X) (E : SeparationAxiomsEvidence S) : SeparationAxiomsClosed S := by
  exact And.intro E.hausdorffClosed (And.intro E.normalClosed E.regularClosed)

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse