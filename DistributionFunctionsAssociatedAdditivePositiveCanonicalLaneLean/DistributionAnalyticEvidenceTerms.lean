import canonicalLaneMathlib.AdmissibleClass
import DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.DistributionAdditivePositive

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure DistributionAnalyticEvidenceTerms (D : DistributionAdditivePositive) where
  additiveLawClosed : D.additiveLaw
  positiveStabilityClosed : D.positiveStability
  distributionClosedUnderAddClosed : D.distributionClosedUnderAdd
  dfaapClosed : DistributionAdditivePositiveClosed D

def DistributionAdditivePositive.evidenceTerms (D : DistributionAdditivePositive)
    (E : DistributionAdditivePositiveEvidence D) : DistributionAnalyticEvidenceTerms D :=
  { additiveLawClosed := E.additiveLawClosed
    positiveStabilityClosed := E.positiveStabilityClosed
    distributionClosedUnderAddClosed := E.distributionClosedUnderAddClosed
    dfaapClosed := distribution_additive_positive_closed_from_evidence D E
  }

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
