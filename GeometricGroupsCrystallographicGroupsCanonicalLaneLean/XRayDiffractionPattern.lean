import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure XRayDiffractionPattern (L : BravaisLatticeFamily 3) where
  incidentBeam : Prop
  scatteredBeam : Prop
  braggAngle : Prop
  structureFactor : Prop
  extinctionRule : Prop
  patternIndexed : Prop

structure XRayDiffractionPatternEvidence (X : XRayDiffractionPattern L) where
  incidentBeamClosed : X.incidentBeam
  scatteredBeamClosed : X.scatteredBeam
  braggAngleClosed : X.braggAngle
  structureFactorClosed : X.structureFactor
  extinctionRuleClosed : X.extinctionRule
  patternIndexedClosed : X.patternIndexed

def XRayDiffractionPatternClosed (L : BravaisLatticeFamily 3) (X : XRayDiffractionPattern L) : Prop :=
  X.incidentBeam ∧ X.scatteredBeam ∧ X.braggAngle ∧ X.structureFactor ∧ X.extinctionRule ∧ X.patternIndexed

theorem x_ray_diffraction_pattern_closed_from_evidence (L : BravaisLatticeFamily 3) (X : XRayDiffractionPattern L) (E : XRayDiffractionPatternEvidence X) : XRayDiffractionPatternClosed L X := by
  exact And.intro E.incidentBeamClosed (And.intro E.scatteredBeamClosed (And.intro E.braggAngleClosed (And.intro E.structureFactorClosed (And.intro E.extinctionRuleClosed E.patternIndexedClosed))))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse