import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure FieldExtensionPackage where
  baseField : Type u
  extensionField : Type v
  derivationExtension : Prop

structure FieldExtensionEvidence (E : FieldExtensionPackage) where
  derivationExtensionClosed : E.derivationExtension

def FieldExtensionClosed (E : FieldExtensionPackage) : Prop :=
  E.derivationExtension

theorem field_extension_closed_from_evidence
    (E : FieldExtensionPackage) (Ev : FieldExtensionEvidence E) :
    FieldExtensionClosed E := by
  exact Ev.derivationExtensionClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
