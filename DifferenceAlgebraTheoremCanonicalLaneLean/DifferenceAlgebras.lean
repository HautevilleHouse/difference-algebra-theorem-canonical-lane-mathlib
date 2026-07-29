import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceAlgebraPackage where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  derivation : carrier → carrier
  differenceField : Prop
  derivationLaw : ∀ a b : carrier, derivation (addition a b) = addition (derivation a) (derivation b)
  multiplicationLaw : ∀ a b : carrier, derivation (multiplication a b) = addition (multiplication (derivation a) b) (multiplication a (derivation b))

structure DifferenceAlgebraEvidence (P : DifferenceAlgebraPackage) where
  differenceFieldClosed : P.differenceField
  derivationLawClosed : ∀ a b : P.carrier, P.derivation (P.addition a b) = P.addition (P.derivation a) (P.derivation b)
  multiplicationLawClosed : ∀ a b : P.carrier, P.derivation (P.multiplication a b) = P.addition (P.multiplication (P.derivation a) b) (P.multiplication a (P.derivation b))

def DifferenceAlgebraClosed (P : DifferenceAlgebraPackage) : Prop :=
  P.differenceField ∧
  (∀ a b : P.carrier, P.derivation (P.addition a b) = P.addition (P.derivation a) (P.derivation b)) ∧
  (∀ a b : P.carrier, P.derivation (P.multiplication a b) = P.addition (P.multiplication (P.derivation a) b) (P.multiplication a (P.derivation b)))

theorem difference_algebra_closed_from_evidence (P : DifferenceAlgebraPackage) (E : DifferenceAlgebraEvidence P) :
    DifferenceAlgebraClosed P := by
  exact And.intro E.differenceFieldClosed (And.intro E.derivationLawClosed E.multiplicationLawClosed)

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse