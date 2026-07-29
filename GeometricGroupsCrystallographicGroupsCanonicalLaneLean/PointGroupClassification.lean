import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure PointGroup where
  dimension : ℕ
  symmetryOperations : String
  order : ℕ
  crystalSystem : String

definition crystallographicPointGroups : List PointGroup := [
  { dimension := 3, symmetryOperations := "1", order := 1, crystalSystem := "triclinic" },
  { dimension := 3, symmetryOperations := "1", order := 2, crystalSystem := "monoclinic" },
  { dimension := 3, symmetryOperations := "2", order := 2, crystalSystem := "orthorhombic" },
  { dimension := 3, symmetryOperations := "222", order := 4, crystalSystem := "orthorhombic" },
  { dimension := 3, symmetryOperations := "mm2", order := 4, crystalSystem := "orthorhombic" },
  { dimension := 3, symmetryOperations := "4", order := 4, crystalSystem := "tetragonal" },
  { dimension := 3, symmetryOperations := "422", order := 8, crystalSystem := "tetragonal" },
  { dimension := 3, symmetryOperations := "4mm", order := 8, crystalSystem := "tetragonal" },
  { dimension := 3, symmetryOperations := "42m", order := 8, crystalSystem := "tetragonal" },
  { dimension := 3, symmetryOperations := "3", order := 3, crystalSystem := "trigonal" },
  { dimension := 3, symmetryOperations := "32", order := 6, crystalSystem := "trigonal" },
  { dimension := 3, symmetryOperations := "3m", order := 6, crystalSystem := "trigonal" },
  { dimension := 3, symmetryOperations := "6", order := 6, crystalSystem := "hexagonal" },
  { dimension := 3, symmetryOperations := "622", order := 12, crystalSystem := "hexagonal" },
  { dimension := 3, symmetryOperations := "6mm", order := 12, crystalSystem := "hexagonal" },
  { dimension := 3, symmetryOperations := "6m2", order := 12, crystalSystem := "hexagonal" },
  { dimension := 3, symmetryOperations := "23", order := 12, crystalSystem := "cubic" },
  { dimension := 3, symmetryOperations := "432", order := 24, crystalSystem := "cubic" },
  { dimension := 3, symmetryOperations := "43m", order := 24, crystalSystem := "cubic" }
]

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse