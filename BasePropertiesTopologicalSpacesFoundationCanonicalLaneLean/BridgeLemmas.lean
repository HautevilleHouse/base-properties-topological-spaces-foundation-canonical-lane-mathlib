import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TopologicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse