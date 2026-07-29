import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure SpaceGroupClassificationPackage where
  spaceGroupNumber : ℕ
  pointGroup : Type u
  latticeSystem : String
  symmorphic : Prop
  spaceGroupType : Prop

structure SpaceGroupClassificationEvidence (S : SpaceGroupClassificationPackage) where
  spaceGroupNumberClosed : 1 ≤ S.spaceGroupNumber ∧ S.spaceGroupNumber ≤ 230
  pointGroupClosed : S.pointGroup → Type
  latticeSystemClosed : S.latticeSystem ∈ ["triclinic", "monoclinic", "orthorhombic", "tetragonal", "cubic", "hexagonal", "trigonal"]
  symmorphicClosed : S.symmorphic
  spaceGroupTypeClosed : S.spaceGroupType

def SpaceGroupClassificationClosed (S : SpaceGroupClassificationPackage) : Prop :=
  (1 ≤ S.spaceGroupNumber ∧ S.spaceGroupNumber ≤ 230) ∧ S.symmorphic ∧ S.spaceGroupType

theorem space_group_classification_closed_from_evidence (S : SpaceGroupClassificationPackage) (E : SpaceGroupClassificationEvidence S) :
    SpaceGroupClassificationClosed S := by
  exact And.intro E.spaceGroupNumberClosed (And.intro E.symmorphicClosed E.spaceGroupTypeClosed)

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse