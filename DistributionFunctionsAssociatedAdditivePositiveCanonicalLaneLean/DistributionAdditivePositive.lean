import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure DistributionAdditivePositive where
  carrier : Type
  addition : carrier -> carrier -> carrier
  positivity : carrier -> Prop
  distributionFamily : carrier -> carrier -> Prop
  additiveLaw : Prop
  positiveStability : Prop
  distributionClosedUnderAdd : Prop

structure DistributionAdditivePositiveEvidence (D : DistributionAdditivePositive) where
  additiveLawClosed : D.additiveLaw
  positiveStabilityClosed : D.positiveStability
  distributionClosedUnderAddClosed : D.distributionClosedUnderAdd

def DistributionAdditivePositiveClosed (D : DistributionAdditivePositive) : Prop :=
  D.additiveLaw ∧ D.positiveStability ∧ D.distributionClosedUnderAdd

theorem distribution_additive_positive_closed_from_evidence
    (D : DistributionAdditivePositive) (E : DistributionAdditivePositiveEvidence D) :
    DistributionAdditivePositiveClosed D := by
  exact And.intro E.additiveLawClosed (And.intro E.positiveStabilityClosed E.distributionClosedUnderAddClosed)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
