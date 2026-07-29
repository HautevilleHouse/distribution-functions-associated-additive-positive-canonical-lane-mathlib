import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure AdditivePositiveFunction (X : Type u) [Add X] [PartialOrder X] where
  carrier : X → ℝ
  additive : ∀ a b : X, carrier (a + b) = carrier a + carrier b
  positive : ∀ x : X, carrier x ≥ 0

structure AdditivePositiveFunctionEvidence (F : AdditivePositiveFunction X) where
  additiveClosed : F.additive
  positiveClosed : F.positive

def AdditivePositiveFunctionClosed (F : AdditivePositiveFunction X) : Prop :=
  F.additive ∧ F.positive

theorem additive_positive_function_closed_from_evidence
    (F : AdditivePositiveFunction X) (E : AdditivePositiveFunctionEvidence F) :
    AdditivePositiveFunctionClosed F := by
  exact And.intro E.additiveClosed E.positiveClosed

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse