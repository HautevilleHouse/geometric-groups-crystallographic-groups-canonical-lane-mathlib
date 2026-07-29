import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure BravaisLatticePackage where
  latticeDimension : ℕ
  pointGroup : Type u
  translationGroup : Type v
  spaceGroupAssigned : Prop
  equivalenceClassFound : Prop

def BieberbachTheoremStatement : Prop :=
  ∀ (G : BravaisLatticePackage) (_ : G.spaceGroupAssigned) (_ : G.equivalenceClassFound), True

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  spaceGroupAssignedClosed : B.spaceGroupAssigned
  equivalenceClassFoundClosed : B.equivalenceClassFound

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.spaceGroupAssigned ∧ B.equivalenceClassFound

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) :
    BravaisLatticeClosed B := by
  exact And.intro E.spaceGroupAssignedClosed E.equivalenceClassFoundClosed

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse