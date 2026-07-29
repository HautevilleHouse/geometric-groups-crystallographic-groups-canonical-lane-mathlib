import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure BravaisLatticePackage where
  discretePointGroup : Type u
  dimension : Nat
  latticeSystem : Prop
  bravaisClass : Type v
  centeringType : Prop
  classificationComplete : Prop
  bravaisClassClosed : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  latticeSystemClosed : B.latticeSystem
  centeringTypeClosed : B.centeringType
  classificationCompleteClosed : B.classificationComplete
  bravaisClassClosedTerm : B.bravaisClassClosed

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.latticeSystem ∧ B.centeringType ∧ B.classificationComplete ∧ B.bravaisClassClosed

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage)
    (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.latticeSystemClosed
    (And.intro E.centeringTypeClosed
      (And.intro E.classificationCompleteClosed E.bravaisClassClosedTerm))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse
