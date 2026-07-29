import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DerivationPropertiesPackage where
  rangeNonempty : Prop
  kernelConstants : Prop
  firstOrderFormula : Prop

structure DerivationPropertiesEvidence (P : DerivationPropertiesPackage) where
  rangeNonemptyClosed : P.rangeNonempty
  kernelConstantsClosed : P.kernelConstants
  firstOrderFormulaClosed : P.firstOrderFormula

def DerivationPropertiesClosed (P : DerivationPropertiesPackage) : Prop :=
  P.rangeNonempty ∧ P.kernelConstants ∧ P.firstOrderFormula

theorem derivation_properties_closed_from_evidence
    (P : DerivationPropertiesPackage) (E : DerivationPropertiesEvidence P) :
    DerivationPropertiesClosed P := by
  exact And.intro E.rangeNonemptyClosed
    (And.intro E.kernelConstantsClosed E.firstOrderFormulaClosed)

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
