import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure CrystallographicRestrictionPackage where
  rotationAllowed : Prop
  latticePeriodicity : Prop
  symmetryGroupFinite : Prop
  restrictionSatisfied : Prop

def CrystallographicRestrictionStatement : Prop :=
  ∀ (C : CrystallographicRestrictionPackage) (_ : C.rotationAllowed) (_ : C.latticePeriodicity) (_ : C.symmetryGroupFinite), C.restrictionSatisfied

structure CrystallographicRestrictionEvidence (C : CrystallographicRestrictionPackage) where
  rotationAllowedClosed : C.rotationAllowed
  latticePeriodicityClosed : C.latticePeriodicity
  symmetryGroupFiniteClosed : C.symmetryGroupFinite
  restrictionSatisfiedClosed : C.restrictionSatisfied

def CrystallographicRestrictionClosed (C : CrystallographicRestrictionPackage) : Prop :=
  C.rotationAllowed ∧ C.latticePeriodicity ∧ C.symmetryGroupFinite ∧ C.restrictionSatisfied

theorem crystallographic_restriction_closed_from_evidence (C : CrystallographicRestrictionPackage)
    (E : CrystallographicRestrictionEvidence C) : CrystallographicRestrictionClosed C := by
  exact And.intro E.rotationAllowedClosed
    (And.intro E.latticePeriodicityClosed
      (And.intro E.symmetryGroupFiniteClosed E.restrictionSatisfiedClosed))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse