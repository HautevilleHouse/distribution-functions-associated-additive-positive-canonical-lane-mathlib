import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdditiveDistributionBridges

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure CumulativeDistributionPackage where
  baseDistribution : AdditivePositiveDistributionPackage
  cumulativeFunction : ℝ → ℝ
  rightContinuous : Prop
  limitsAtInfinity : Prop

structure CumulativeDistributionEvidence (C : CumulativeDistributionPackage) where
  baseClosed : AdditiveDistributionClosed C.baseDistribution
  rightContinuousClosed : C.rightContinuous
  limitsAtInfinityClosed : C.limitsAtInfinity

def CumulativeDistributionClosed (C : CumulativeDistributionPackage) : Prop :=
  C.rightContinuous ∧ C.limitsAtInfinity

theorem cumulative_distribution_closed_from_evidence (C : CumulativeDistributionPackage)
    (E : CumulativeDistributionEvidence C) : CumulativeDistributionClosed C := by
  exact And.intro E.rightContinuousClosed E.limitsAtInfinityClosed

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
