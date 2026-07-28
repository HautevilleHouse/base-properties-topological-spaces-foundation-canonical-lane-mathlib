import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : TopologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TopologicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse