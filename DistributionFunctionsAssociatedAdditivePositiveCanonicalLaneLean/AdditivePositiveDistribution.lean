import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure AdditivePositiveDistribution where
  supportType : Type
  additiveSemigroup : AddSemigroup supportType
  distributionFunction : supportType → ℝ≥0
  positiveAdditivity : Prop
  boundedness : Prop

structure AdditivePositiveDistributionEvidence (D : AdditivePositiveDistribution) where
  positiveAdditivityClosed : D.positiveAdditivity
  boundednessClosed : D.boundedness

def AdditivePositiveDistributionClosed (D : AdditivePositiveDistribution) : Prop :=
  D.positiveAdditivity ∧ D.boundedness

theorem additive_positive_distribution_closed_from_evidence (D : AdditivePositiveDistribution) (E : AdditivePositiveDistributionEvidence D) : AdditivePositiveDistributionClosed D :=
  And.intro E.positiveAdditivityClosed E.boundednessClosed

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
