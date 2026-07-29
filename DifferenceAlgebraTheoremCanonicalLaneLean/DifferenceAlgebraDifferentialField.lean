import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferentialFieldPackage where
  field : Type u
  derivation : field → field
  constants : Subfield field
  constantsClosed : ∀ c : constants, derivation c = 0

structure DifferentialFieldEvidence (D : DifferentialFieldPackage) where
  constantsClosed : D.constantsClosed

def DifferentialFieldClosed (D : DifferentialFieldPackage) : Prop :=
  D.constantsClosed

theorem differential_field_closed_from_evidence
    (D : DifferentialFieldPackage) (E : DifferentialFieldEvidence D) :
    DifferentialFieldClosed D := by
  exact E.constantsClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
