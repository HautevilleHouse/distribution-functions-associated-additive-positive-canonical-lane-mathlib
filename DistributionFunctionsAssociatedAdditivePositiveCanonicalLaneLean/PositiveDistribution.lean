import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure PositiveDistribution (X : Type u) where
  carrier : X → ℝ
  positivity : ∀ x, carrier x ≥ 0
  totalMassOne : ∑' x, carrier x = 1

def PositiveDistribution.admissible (d : PositiveDistribution X) : Prop :=
  d.positivity (some x) ∧ d.totalMassOne = 1

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse