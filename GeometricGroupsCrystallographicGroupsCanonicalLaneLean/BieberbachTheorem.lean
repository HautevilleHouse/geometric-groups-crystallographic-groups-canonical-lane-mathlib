import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure BieberbachPackage where
  spaceGroup : Type u
  translationLattice : Type v
  pointGroup : Type w
  crystallographicRestriction : Prop
  bieberbachFirstTheorem : Prop
  bieberbachSecondTheorem : Prop
  bieberbachThirdTheorem : Prop
  spaceGroupClosed : Prop

structure BieberbachEvidence (B : BieberbachPackage) where
  crystallographicRestrictionClosed : B.crystallographicRestriction
  bieberbachFirstTheoremClosed : B.bieberbachFirstTheorem
  bieberbachSecondTheoremClosed : B.bieberbachSecondTheorem
  bieberbachThirdTheoremClosed : B.bieberbachThirdTheorem
  spaceGroupClosedTerm : B.spaceGroupClosed

def BieberbachClosed (B : BieberbachPackage) : Prop :=
  B.crystallographicRestriction ∧ B.bieberbachFirstTheorem ∧
  B.bieberbachSecondTheorem ∧ B.bieberbachThirdTheorem ∧ B.spaceGroupClosed

theorem bieberbach_closed_from_evidence (B : BieberbachPackage)
    (E : BieberbachEvidence B) : BieberbachClosed B := by
  exact And.intro E.crystallographicRestrictionClosed
    (And.intro E.bieberbachFirstTheoremClosed
      (And.intro E.bieberbachSecondTheoremClosed
        (And.intro E.bieberbachThirdTheoremClosed E.spaceGroupClosedTerm)))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse
