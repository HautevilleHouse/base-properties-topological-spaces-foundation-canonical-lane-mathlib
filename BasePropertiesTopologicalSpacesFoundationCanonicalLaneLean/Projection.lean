import BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TopologyEndgameState where
  object : TopologyAdmittedObject

def topologyProjection : Projection TopologyEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem topology_projection_idempotent (x : TopologyEndgameState) :
    topologyProjection.toFun (topologyProjection.toFun x) = topologyProjection.toFun x := by
  exact topologyProjection.idempotent x

end BasePropertiesTopologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse