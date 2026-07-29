import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceAdmittedObject where
  differenceField : Type u
  derivation : differenceField → differenceField
  fieldOperations : Add differenceField ∧ Mul differenceField ∧ HasInv differenceField
  characteristicZero : ℚ → differenceField  -- embedding of rationals
  noZeroDivisors : ∀ a b : differenceField, a * b = 0 → a = 0 ∨ b = 0
  derivationLinear : ∀ a b : differenceField, derivation (a + b) = derivation a + derivation b ∧ derivation (a * b) = (derivation a) * b + a * (derivation b)
  conclusion : Prop

def DifferenceWitnessClosed (O : DifferenceAdmittedObject) : Prop :=
  O.conclusion

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
