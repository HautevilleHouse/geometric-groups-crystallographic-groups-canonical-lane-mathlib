import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure CrystallographicGroup (n : Nat) where
  groupActing : Group (ℝ ^ n)
  lattice : Subgroup (ℝ ^ n)
  compactFundamentalDomain : Prop

structure BieberbachTheorem (n : Nat) where
  finiteGroup : Prop
  groupIsCrystallographic : CrystallographicGroup n
  pointGroupIsFinite : Prop
  dimensionUpperBound : n ≤ 3

theorem bieberbachFirstTheorem (n : Nat) : BieberbachTheorem n := sorry

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse