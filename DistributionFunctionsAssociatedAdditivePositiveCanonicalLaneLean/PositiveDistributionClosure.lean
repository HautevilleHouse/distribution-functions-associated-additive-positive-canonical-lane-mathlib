import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure PositiveDistributionPackage where
  functionSpace : AdditiveFunctionSpace
  positiveCone : Prop
  pointwiseOrder : (functionSpace.domain -> functionSpace.codomain) -> (functionSpace.domain -> functionSpace.codomain) -> Prop
  positive : (functionSpace.domain -> functionSpace.codomain) -> Prop
  positiveClosed : positive (fun _ => functionSpace.zero)

def PositiveDistributionClosed (P : PositiveDistributionPackage) : Prop :=
  P.positive (fun _ => P.functionSpace.zero)

theorem positive_distribution_closed (P : PositiveDistributionPackage) :
    PositiveDistributionClosed P :=
  P.positiveClosed

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse