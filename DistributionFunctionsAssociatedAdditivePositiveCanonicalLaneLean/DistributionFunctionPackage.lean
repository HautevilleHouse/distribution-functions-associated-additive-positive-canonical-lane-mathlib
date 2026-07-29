import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdditivePositiveFunction

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure DistributionFunctionPackage (X : Type u) [Add X] [PartialOrder X] where
  source : AdditivePositiveFunction X
  distributionFamily : X → ℝ → ℝ
  cumulativeProperty : ∀ x y : X, distributionFamily x y = ∑' {z | z ≤ y}, source.carrier (x - z)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse