import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure BieberbachGroupPackage where
  rank : ℕ
  pointGroup : Type u
  lattice : Type v
  exactSequence : Prop
  torsionFree : Prop
  maximalAbelianSubgroup : Prop
  bieberbachTheoremStatement : Prop

structure BieberbachGroupEvidence (B : BieberbachGroupPackage) where
  rankClosed : B.rank = 3
  pointGroupClosed : B.pointGroup → Type
  latticeClosed : B.lattice → Type
  exactSequenceClosed : B.exactSequence
  torsionFreeClosed : B.torsionFree
  maximalAbelianSubgroupClosed : B.maximalAbelianSubgroup
  bieberbachTheoremStatementClosed : B.bieberbachTheoremStatement

def BieberbachGroupClosed (B : BieberbachGroupPackage) : Prop :=
  B.rank = 3 ∧ B.exactSequence ∧ B.torsionFree ∧ B.maximalAbelianSubgroup ∧ B.bieberbachTheoremStatement

theorem bieberbach_group_closed_from_evidence (B : BieberbachGroupPackage) (E : BieberbachGroupEvidence B) :
    BieberbachGroupClosed B := by
  exact And.intro E.rankClosed
    (And.intro E.exactSequenceClosed
      (And.intro E.torsionFreeClosed
        (And.intro E.maximalAbelianSubgroupClosed E.bieberbachTheoremStatementClosed)))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse