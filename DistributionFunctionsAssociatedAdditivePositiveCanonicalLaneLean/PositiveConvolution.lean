import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdditivePositiveFunction

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure PositiveConvolution (X : Type u) [Add X] [PartialOrder X] where
  f : AdditivePositiveFunction X
  g : AdditivePositiveFunction X
  h : AdditivePositiveFunction X
  convolutionIdentity : ∀ x : X, h.carrier x = ∑' {y : X}, f.carrier y * g.carrier (x - y)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse