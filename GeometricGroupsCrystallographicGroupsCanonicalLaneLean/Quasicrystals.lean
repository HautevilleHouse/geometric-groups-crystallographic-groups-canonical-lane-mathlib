import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure Quasicrystal where
  dimension : ℕ
  aperiodicOrderedStructure : Prop
  forbiddenRotationSymmetries : Set ℕ

structure IcosahedralQuasicrystal extends Quasicrystal where
  icosahedralSymmetry : dimension = 3 ∧ 5 ∈ forbiddenRotationSymmetries

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse