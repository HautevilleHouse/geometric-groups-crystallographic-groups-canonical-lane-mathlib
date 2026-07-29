import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (bieberbach_group_closed A.object.bieberbach) ∧ (bravais_lattice_closed A.object.lattice) ∧
  (space_group_classification_closed A.object.spaceGroup) ∧ (quasicrystal_model_closed A.object.quasicrystal) ∧
  (xray_diffraction_pattern_closed A.object.diffraction)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : bieberbach_group_closed A.object.bieberbach := sorry
  have h2 : bravais_lattice_closed A.object.lattice := sorry
  have h3 : space_group_classification_closed A.object.spaceGroup := sorry
  have h4 : quasicrystal_model_closed A.object.quasicrystal := sorry
  have h5 : xray_diffraction_pattern_closed A.object.diffraction := sorry
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse