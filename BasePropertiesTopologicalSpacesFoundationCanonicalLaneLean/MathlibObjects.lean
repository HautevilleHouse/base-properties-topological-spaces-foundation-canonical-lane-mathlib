import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

structure TopologicalSpaceObj where
  carrier : Type
  topology : TopologicalSpace carrier
  isT0 : Prop
  isT1 : Prop
  isT2 : Prop

default

structure TopologyAdmittedObject where
  space : TopologicalSpaceObj
  compact : Prop
  connected : Prop
  hausdorff : Prop
  conclusion : compact ∧ connected ∧ hausdorff

def TopologyWitnessClosed (O : TopologyAdmittedObject) : Prop :=
  O.conclusion

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse