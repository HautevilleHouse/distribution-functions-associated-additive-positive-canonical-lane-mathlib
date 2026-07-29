import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.PositiveDistributionClosure

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure FunctionalAnalyticFoundation where
  space : AdditiveFunctionSpace
  positive : PositiveDistributionPackage
  spaceEvidence : AdditiveFunctionSpaceClosed space
  positiveEvidence : PositiveDistributionClosed positive

def FunctionalAnalyticFoundationClosed (F : FunctionalAnalyticFoundation) : Prop :=
  AdditiveFunctionSpaceClosed F.space ∧ PositiveDistributionClosed F.positive

theorem functional_analytic_foundation_closed_from_evidence (F : FunctionalAnalyticFoundation) :
    FunctionalAnalyticFoundationClosed F :=
  And.intro F.spaceEvidence F.positiveEvidence

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse