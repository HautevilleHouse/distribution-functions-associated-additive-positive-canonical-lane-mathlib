import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure SemigroupEmbedding (X : Type u) [AddSemigroup X] where
  embedding : X → PositiveDistribution X
  compatibility : ∀ a b, embedding (a + b) = AdditiveConvolution (embedding a) (embedding b)

def SemigroupEmbeddingClosed (E : SemigroupEmbedding X) : Prop :=
  E.compatibility (some a) (some b)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse