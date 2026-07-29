import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure DistributionClosureObject where
  distribution : AdditivePositiveDistribution
  additiveClosure : Prop
  positiveClosure : Prop
  proof : additiveClosure ∧ positiveClosure

def DistributionClosure (O : DistributionClosureObject) : Prop :=
  O.additiveClosure ∧ O.positiveClosure

theorem distribution_closure_from_object (O : DistributionClosureObject) : DistributionClosure O :=
  O.proof

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
