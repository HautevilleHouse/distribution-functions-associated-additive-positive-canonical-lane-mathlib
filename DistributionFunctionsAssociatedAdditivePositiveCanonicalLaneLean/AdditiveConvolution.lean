import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure AdditiveConvolution (X : Type u) [Add X] where
  kernel : X → X → ℝ
  positivity : ∀ x y, kernel x y ≥ 0
  normalization : ∀ x, ∑' y, kernel x y = 1

def AdditiveConvolutionClosed (C : AdditiveConvolution X) : Prop :=
  C.kernel (some x) (some y) ≥ 0 ∧ C.normalization (some x) = 1

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse