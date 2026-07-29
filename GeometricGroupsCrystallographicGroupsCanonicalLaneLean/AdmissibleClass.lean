import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure CrystallographicAdmittedObject where
  spaceGroup : SpaceGroupClassificationPackage
  lattice : BravaisLatticePackage
  bieberbach : BieberbachGroupPackage
  quasicrystal : QuasicrystalModelPackage
  diffraction : XRayDiffractionPatternPackage

structure AdmissibleClass where
  object : CrystallographicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bieberbach_group_closed A.object.bieberbach) ∧ (bravais_lattice_closed A.object.lattice) ∧
  (space_group_classification_closed A.object.spaceGroup) ∧ (quasicrystal_model_closed A.object.quasicrystal) ∧
  (xray_diffraction_pattern_closed A.object.diffraction) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse