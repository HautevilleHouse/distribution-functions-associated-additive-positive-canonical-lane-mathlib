import canonicalLaneMathlib.AdmissibleClass
import DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.DistributionAdditivePositive

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure DistributionFoundation where
  D : DistributionAdditivePositive
  evidence : DistributionAdditivePositiveEvidence D

def DistributionFoundationClosed (F : DistributionFoundation) : Prop :=
  DistributionAdditivePositiveClosed F.D

theorem distribution_foundation_closed_from_evidence (F : DistributionFoundation) :
    DistributionFoundationClosed F := by
  exact distribution_additive_positive_closed_from_evidence F.D F.evidence

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
