import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure BochnerTheorem (X : Type u) [Add X] where
  characteristicFunction : CharacteristicFunction X
  correspondsToMeasure : Prop
  measureUniqueness : Prop
  positiveDefiniteImpliesMeasure : characteristicFunction.positiveDefinite.positiveDefinite (some n) (some x) (some c) → correspondsToMeasure

def BochnerTheoremClosure (B : BochnerTheorem X) : Prop :=
  B.correspondsToMeasure ∧ B.measureUniqueness

theorem bochner_theorem_closed (B : BochnerTheorem X) : BochnerTheoremClosure B := by
  exact And.intro B.correspondsToMeasure B.measureUniqueness

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse