import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.DifferenceEquations

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure PicardVessiotPackage {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} where
  picardVessiotExtension : Type
  galoisGroup : Type
  existense : Prop
  normalExtension : Prop

structure PicardVessiotEvidence {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} (P : PicardVessiotPackage D E) where
  existenseClosed : P.existense
  normalExtensionClosed : P.normalExtension

def PicardVessiotClosed {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} (P : PicardVessiotPackage D E) : Prop :=
  P.existense ∧ P.normalExtension

theorem picard_vessiot_closed_from_evidence {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} (P : PicardVessiotPackage D E) (Ev : PicardVessiotEvidence P) :
    PicardVessiotClosed P := by
  exact And.intro Ev.existenseClosed Ev.normalExtensionClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse