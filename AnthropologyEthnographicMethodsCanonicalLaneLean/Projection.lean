import AnthropologyEthnographicMethodsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEthnographicMethodsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ethnographicProjection : Projection EthnographicEndgameState :=
  {
    toFun := fun x => x
    idempotent := by intro x; rfl
  }

theorem ethnographic_projection_idempotent (x : EthnographicEndgameState) :
    ethnographicProjection.toFun (ethnographicProjection.toFun x) = ethnographicProjection.toFun x :=
  ethnographicProjection.idempotent x

end AnthropologyEthnographicMethodsCanonicalLaneLean
end HautevilleHouse