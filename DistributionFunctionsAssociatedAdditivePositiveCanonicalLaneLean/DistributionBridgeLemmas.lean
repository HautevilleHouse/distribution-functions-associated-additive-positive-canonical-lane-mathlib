import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionAdditivePositiveClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
