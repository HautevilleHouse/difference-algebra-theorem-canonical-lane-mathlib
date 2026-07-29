import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.DifferenceFieldExtension
import DifferenceAlgebraTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceGaloisGroupPackage (E : DifferenceFieldExtensionPackage) where
  galoisGroup : Type
  actionOnTransformalIndeterminates : Prop
  fixedFieldMatchesBase : Prop

structure DifferenceGaloisGroupEvidence {E : DifferenceFieldExtensionPackage}
    (G : DifferenceGaloisGroupPackage E) where
  actionOnTransformalIndeterminatesClosed : G.actionOnTransformalIndeterminates
  fixedFieldMatchesBaseClosed : G.fixedFieldMatchesBase

def DifferenceGaloisGroupClosed {E : DifferenceFieldExtensionPackage}
    (G : DifferenceGaloisGroupPackage E) : Prop :=
  G.actionOnTransformalIndeterminates ∧ G.fixedFieldMatchesBase

theorem difference_galois_group_closed_from_evidence
    {E : DifferenceFieldExtensionPackage} (G : DifferenceGaloisGroupPackage E)
    (Ev : DifferenceGaloisGroupEvidence G) : DifferenceGaloisGroupClosed G := by
  exact And.intro Ev.actionOnTransformalIndeterminatesClosed Ev.fixedFieldMatchesBaseClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse