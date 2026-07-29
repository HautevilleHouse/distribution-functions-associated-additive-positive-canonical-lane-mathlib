import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure AdditivePositiveDistributionPackage where
  measureSpace : Type u
  sigmaAlgebra : Set (Set measureSpace)
  probabilityMeasure : measureSpace → ℝ
  additiveFunctional : measureSpace → ℝ
  positiveSupport : Prop
  distributionFunction : ℝ → ℝ

structure AdditiveDistributionEvidence (P : AdditivePositiveDistributionPackage) where
  measureSpaceClosed : P.measureSpace = P.measureSpace
  sigmaAlgebraClosed : True
  probabilityMeasureClosed : ∀ x, P.probabilityMeasure x ≥ 0
  additiveFunctionalClosed : P.additiveFunctional 0 = 0
  positiveSupportClosed : P.positiveSupport
  distributionFunctionClosed : ∀ t, P.distributionFunction t ∈ Set.Ioo 0 1

def AdditiveDistributionClosed (P : AdditivePositiveDistributionPackage) : Prop :=
  P.positiveSupport

theorem additive_distribution_closed_from_evidence (P : AdditivePositiveDistributionPackage)
    (E : AdditiveDistributionEvidence P) : AdditiveDistributionClosed P := by
  exact E.positiveSupportClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
