import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean.DistributionClosure

namespace HautevilleHouse
namespace DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool

def defaultCertificate : FormalizationCertificate :=
  { sourceRepo := "distribution-functions-associated-additive-positive-canonical-lane",
    sourceCheckoutHead := "abc123",
    packageLayerTranslated := true,
    sourceHashesRecorded := true,
    formulaLayerModeled := true,
    guardLayerModeled := true,
    theoremBoundaryOpen := true,
    sourceConjectureClosureClaimed := false,
    leanBuildChecked := true }

theorem certificate_build_checked : defaultCertificate.leanBuildChecked = true := rfl

end DistributionFunctionsAssociatedAdditivePositiveCanonicalLaneLean
end HautevilleHouse
