import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure CharacteristicFunction (X : Type u) [Add X] where
  phi : X → ℂ
  hermitian : ∀ x, conj (phi x) = phi (-x)
  positiveDefinite : PositiveDefiniteFunction X

def CharacteristicFunctionClosed (C : CharacteristicFunction X) : Prop :=
  C.hermitian (some x) ∧ C.positiveDefinite.positiveDefinite (some n) (some x) (some c)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse