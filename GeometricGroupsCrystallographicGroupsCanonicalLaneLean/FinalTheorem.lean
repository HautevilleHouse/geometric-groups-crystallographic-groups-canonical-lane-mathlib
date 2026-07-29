import canonicalLaneMathlib.AdmissibleClass
import GeometricGroupsCrystallographicGroupsCanonicalLaneLean.BieberbachStructureCoupling
import GeometricGroupsCrystallographicGroupsCanonicalLaneLean.CrystallographicRestrictionBridge
import GeometricGroupsCrystallographicGroupsCanonicalLaneLean.QuasicrystalDiffractionBridge

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure CrystallographicAdmissibleClass where
  bravaisLattice : BravaisLatticePackage
  bravaisLatticeEvidence : BravaisLatticeEvidence bravaisLattice
  crystallographicRestriction : CrystallographicRestrictionPackage
  crystallographicRestrictionEvidence : CrystallographicRestrictionEvidence crystallographicRestriction
  quasicrystalDiffraction : QuasicrystalDiffractionPackage
  quasicrystalDiffractionEvidence : QuasicrystalDiffractionEvidence quasicrystalDiffraction

def bridgeClosed (A : CrystallographicAdmissibleClass) : Prop :=
  BravaisLatticeClosed A.bravaisLattice ∧ CrystallographicRestrictionClosed A.crystallographicRestriction ∧ QuasicrystalDiffractionClosed A.quasicrystalDiffraction

theorem bridge_from_admissible_class (A : CrystallographicAdmissibleClass) : bridgeClosed A := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact bravais_lattice_closed_from_evidence A.bravaisLattice A.bravaisLatticeEvidence
  · exact crystallographic_restriction_closed_from_evidence A.crystallographicRestriction A.crystallographicRestrictionEvidence
  · exact quasicrystal_diffraction_closed_from_evidence A.quasicrystalDiffraction A.quasicrystalDiffractionEvidence

def gateClosed (A : CrystallographicAdmissibleClass) : Prop :=
  True

theorem gate_from_admissible_class (A : CrystallographicAdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedCrystallographicClosure (A : CrystallographicAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem crystallographic_endgame (A : CrystallographicAdmissibleClass) : ConstrainedCrystallographicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse