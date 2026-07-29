import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure BravaisLatticePackage where
  centeringType : String
  crystalSystem : String
  latticeParameters : ℕ → ℕ
  symmetryGroup : Type u
  bravaisClassComplete : Prop

structure BravaisLatticeEvidence (L : BravaisLatticePackage) where
  centeringTypeClosed : L.centeringType ∈ ["P", "I", "F", "C"]
  crystalSystemClosed : L.crystalSystem ∈ ["triclinic", "monoclinic", "orthorhombic", "tetragonal", "cubic", "hexagonal", "trigonal"]
  latticeParametersClosed : L.latticeParameters = λ n => n + 1
  symmetryGroupClosed : L.symmetryGroup → Type
  bravaisClassCompleteClosed : L.bravaisClassComplete

def BravaisLatticeClosed (L : BravaisLatticePackage) : Prop :=
  L.centeringType ∈ ["P", "I", "F", "C"] ∧
  L.crystalSystem ∈ ["triclinic", "monoclinic", "orthorhombic", "tetragonal", "cubic", "hexagonal", "trigonal"] ∧
  L.bravaisClassComplete

theorem bravais_lattice_closed_from_evidence (L : BravaisLatticePackage) (E : BravaisLatticeEvidence L) :
    BravaisLatticeClosed L := by
  exact And.intro E.centeringTypeClosed
    (And.intro E.crystalSystemClosed E.bravaisClassCompleteClosed)

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse