import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure CrystallographicRestrictionPackage where
  spaceGroup : Type u
  pointGroup : Type v
  rotationOrders : Prop
  finitePointGroup : Prop
  restrictedPointGroup : Prop
  restrictionClosed : Prop

structure CrystallographicRestrictionEvidence (C : CrystallographicRestrictionPackage) where
  rotationOrdersClosed : C.rotationOrders
  finitePointGroupClosed : C.finitePointGroup
  restrictedPointGroupClosed : C.restrictedPointGroup
  restrictionClosedTerm : C.restrictionClosed

def CrystallographicRestrictionClosed (C : CrystallographicRestrictionPackage) : Prop :=
  C.rotationOrders ∧ C.finitePointGroup ∧ C.restrictedPointGroup ∧ C.restrictionClosed

theorem crystallographic_restriction_closed_from_evidence
    (C : CrystallographicRestrictionPackage)
    (E : CrystallographicRestrictionEvidence C) : CrystallographicRestrictionClosed C := by
  exact And.intro E.rotationOrdersClosed
    (And.intro E.finitePointGroupClosed
      (And.intro E.restrictedPointGroupClosed E.restrictionClosedTerm))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse
