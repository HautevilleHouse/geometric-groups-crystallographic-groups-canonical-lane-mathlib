import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure CrystallographicSpaceGroup (dim : Nat) where
  carrier : Type
  topology : TopologicalSpace carrier
  lattice : carrier → carrier → Prop
  translationSubgroup : Prop
  pointGroup : Type
  pointGroupAction : pointGroup → carrier → carrier
  cocompact : Prop
  properDiscontinuity : Prop
  dimension : dim = 3
  crystallographicConstraint : Prop

structure CrystallographicSpaceGroupEvidence (G : CrystallographicSpaceGroup dim) where
  translationSubgroupClosed : G.translationSubgroup
  cocompactClosed : G.cocompact
  properDiscontinuityClosed : G.properDiscontinuity
  dimensionClosed : G.dimension
  crystallographicConstraintClosed : G.crystallographicConstraint

def CrystallographicSpaceGroupClosed (dim : Nat) (G : CrystallographicSpaceGroup dim) : Prop :=
  G.translationSubgroup ∧ G.cocompact ∧ G.properDiscontinuity ∧ G.dimension ∧ G.crystallographicConstraint

theorem crystallographic_space_group_closed_from_evidence (dim : Nat) (G : CrystallographicSpaceGroup dim) (E : CrystallographicSpaceGroupEvidence G) : CrystallographicSpaceGroupClosed dim G := by
  exact And.intro E.translationSubgroupClosed (And.intro E.cocompactClosed (And.intro E.properDiscontinuityClosed (And.intro E.dimensionClosed E.crystallographicConstraintClosed)))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse