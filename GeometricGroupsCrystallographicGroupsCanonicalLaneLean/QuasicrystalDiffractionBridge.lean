import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricGroupsCrystallographicGroupsCanonicalLaneLean

structure QuasicrystalDiffractionPackage where
  atomicStructure : Type u
  diffractionPattern : Type v
  aperiodicOrder : Prop
  rotationalSymmetry : Prop
  diffractionSimulation : Prop

def QuasicrystalDiffractionStatement : Prop :=
  ∀ (Q : QuasicrystalDiffractionPackage) (_ : Q.aperiodicOrder) (_ : Q.rotationalSymmetry), Q.diffractionSimulation

structure QuasicrystalDiffractionEvidence (Q : QuasicrystalDiffractionPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  rotationalSymmetryClosed : Q.rotationalSymmetry
  diffractionSimulationClosed : Q.diffractionSimulation

def QuasicrystalDiffractionClosed (Q : QuasicrystalDiffractionPackage) : Prop :=
  Q.aperiodicOrder ∧ Q.rotationalSymmetry ∧ Q.diffractionSimulation

theorem quasicrystal_diffraction_closed_from_evidence (Q : QuasicrystalDiffractionPackage)
    (E : QuasicrystalDiffractionEvidence Q) : QuasicrystalDiffractionClosed Q := by
  exact And.intro E.aperiodicOrderClosed
    (And.intro E.rotationalSymmetryClosed E.diffractionSimulationClosed)

end GeometricGroupsCrystallographicGroupsCanonicalLaneLean
end HautevilleHouse