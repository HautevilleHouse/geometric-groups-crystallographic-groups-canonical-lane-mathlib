import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure QuasicrystalTiling (dim : Nat) where
  tileSet : Type
  inflationRule : Prop
  nonperiodic : Prop
  diffractionPattern : Prop
  forbiddenSymmetry : Prop
  aperiodicOrder : Prop

structure QuasicrystalTilingEvidence (Q : QuasicrystalTiling dim) where
  inflationRuleClosed : Q.inflationRule
  nonperiodicClosed : Q.nonperiodic
  diffractionPatternClosed : Q.diffractionPattern
  forbiddenSymmetryClosed : Q.forbiddenSymmetry
  aperiodicOrderClosed : Q.aperiodicOrder

def QuasicrystalTilingClosed (dim : Nat) (Q : QuasicrystalTiling dim) : Prop :=
  Q.inflationRule ∧ Q.nonperiodic ∧ Q.diffractionPattern ∧ Q.forbiddenSymmetry ∧ Q.aperiodicOrder

theorem quasicrystal_tiling_closed_from_evidence (dim : Nat) (Q : QuasicrystalTiling dim) (E : QuasicrystalTilingEvidence Q) : QuasicrystalTilingClosed dim Q := by
  exact And.intro E.inflationRuleClosed (And.intro E.nonperiodicClosed (And.intro E.diffractionPatternClosed (And.intro E.forbiddenSymmetryClosed E.aperiodicOrderClosed)))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse