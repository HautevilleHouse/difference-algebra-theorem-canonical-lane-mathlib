import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceAlgebraSpace where
  carrier : Type
  structure : String

def DifferenceAlgebraWitnessClosed (O : DifferenceAlgebraAdmittedObject) : Prop :=
  O.zeroCharacteristic ∧ O.differencePrimeIdeal ∧ O.differenceGaloisGroupAction

structure DifferenceAlgebraAdmittedObject where
  space : DifferenceAlgebraSpace
  zeroCharacteristic : Prop
  differencePrimeIdeal : Prop
  differenceGaloisGroupAction : Prop
  conclusion : differenceGaloisGroupAction

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse