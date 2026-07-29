import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure XRayDiffractionPatternPackage where
  braggAngle : ℝ
  wavelength : ℝ
  latticeSpacing : ℝ
  millerIndices : ℕ × ℕ × ℕ
  structureFactor : ℝ
  diffractionCondition : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPatternPackage) where
  braggAngleClosed : 0 ≤ X.braggAngle ∧ X.braggAngle ≤ π/2
  wavelengthClosed : X.wavelength > 0
  latticeSpacingClosed : X.latticeSpacing > 0
  millerIndicesClosed : X.millerIndices.1 ≠ 0 ∨ X.millerIndices.2.1 ≠ 0 ∨ X.millerIndices.2.2 ≠ 0
  structureFactorClosed : X.structureFactor ∈ ℝ
  diffractionConditionClosed : X.diffractionCondition

def XRayDiffractionPatternClosed (X : XRayDiffractionPatternPackage) : Prop :=
  X.diffractionCondition

theorem xray_diffraction_pattern_closed_from_evidence (X : XRayDiffractionPatternPackage) (E : XRayDiffractionEvidence X) :
    XRayDiffractionPatternClosed X := by
  exact E.diffractionConditionClosed

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse