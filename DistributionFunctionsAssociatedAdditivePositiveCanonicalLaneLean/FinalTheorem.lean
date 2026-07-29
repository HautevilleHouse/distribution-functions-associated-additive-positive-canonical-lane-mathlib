import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdditiveDistributionBridges
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.CumulativeDistributionClosure

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

def ConstrainedDistributionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_endgame (A : AdmissibleClass) :
    ConstrainedDistributionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
