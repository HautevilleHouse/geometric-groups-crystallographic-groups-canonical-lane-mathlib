import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure QuasicrystalModelPackage where
  tilingType : String
  inflationRule : String
  fourierModuleRank : ℕ
  matchingRule : Prop
  aperiodicOrder : Prop

structure QuasicrystalModelEvidence (Q : QuasicrystalModelPackage) where
  tilingTypeClosed : Q.tilingType ∈ ["Penrose", "Ammann", "Fibonacci", "icosahedral"]
  inflationRuleClosed : Q.inflationRule ≠ ""
  fourierModuleRankClosed : Q.fourierModuleRank = 3
  matchingRuleClosed : Q.matchingRule
  aperiodicOrderClosed : Q.aperiodicOrder

def QuasicrystalModelClosed (Q : QuasicrystalModelPackage) : Prop :=
  Q.tilingType ∈ ["Penrose", "Ammann", "Fibonacci", "icosahedral"] ∧ Q.fourierModuleRank = 3 ∧ Q.matchingRule ∧ Q.aperiodicOrder

theorem quasicrystal_model_closed_from_evidence (Q : QuasicrystalModelPackage) (E : QuasicrystalModelEvidence Q) :
    QuasicrystalModelClosed Q := by
  exact And.intro E.tilingTypeClosed (And.intro E.fourierModuleRankClosed (And.intro E.matchingRuleClosed E.aperiodicOrderClosed))

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse