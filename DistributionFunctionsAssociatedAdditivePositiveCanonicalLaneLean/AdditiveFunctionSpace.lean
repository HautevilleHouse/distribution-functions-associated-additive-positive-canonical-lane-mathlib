import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure AdditiveFunctionSpace where
  domain : Type
  codomain : Type u
  addition : codomain -> codomain -> codomain
  zero : codomain
  additiveProperty : (domain -> codomain) -> Prop
  additivePropertyClosed : additiveProperty (fun _ => zero)

def AdditiveFunctionSpaceClosed (S : AdditiveFunctionSpace) : Prop :=
  S.additiveProperty (fun _ => S.zero)

theorem additive_function_space_closed (S : AdditiveFunctionSpace) :
    AdditiveFunctionSpaceClosed S :=
  S.additivePropertyClosed

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse