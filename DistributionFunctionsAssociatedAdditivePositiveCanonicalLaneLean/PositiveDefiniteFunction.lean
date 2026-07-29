import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure PositiveDefiniteFunction (X : Type u) [Add X] where
  f : X → ℂ
  positiveDefinite : ∀ n : ℕ, ∀ (x : Fin n → X) (c : Fin n → ℂ),
    (∑ i : Fin n, ∑ j : Fin n, c i * conj (c j) * f (x i - x j)) ≥ 0

def PositiveDefiniteFunctionClosed (P : PositiveDefiniteFunction X) : Prop :=
  P.positiveDefinite (some n) (some x) (some c)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse