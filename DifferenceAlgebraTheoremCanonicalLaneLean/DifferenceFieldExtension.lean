import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceFieldExtensionPackage where
  baseDifferenceField : Type
  extensionDegree : Nat
  transformalTranscendenceBasis : Prop
  existentiallyClosed : Prop

structure DifferenceFieldExtensionEvidence (E : DifferenceFieldExtensionPackage) where
  extensionDegreeFinite : E.extensionDegree > 0
  transformalTranscendenceBasisClosed : E.transformalTranscendenceBasis
  existentiallyClosedClosed : E.existentiallyClosed

def DifferenceFieldExtensionClosed (E : DifferenceFieldExtensionPackage) : Prop :=
  E.transformalTranscendenceBasis ∧ E.existentiallyClosed

theorem difference_field_extension_closed_from_evidence
    (E : DifferenceFieldExtensionPackage) (Ev : DifferenceFieldExtensionEvidence E) :
    DifferenceFieldExtensionClosed E := by
  exact And.intro Ev.transformalTranscendenceBasisClosed Ev.existentiallyClosedClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse