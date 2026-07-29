import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.DifferenceAlgebras

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceEquationPackage {D : DifferenceAlgebraPackage} where
  operator : D.carrier → D.carrier
  eqSet : D.carrier → Prop
  solutionSpace : Type
  dimensionFinite : Prop
  linearity : Prop

structure DifferenceEquationEvidence {D : DifferenceAlgebraPackage} (P : DifferenceEquationPackage D) where
  dimensionFiniteClosed : P.dimensionFinite
  linearityClosed : P.linearity

def DifferenceEquationClosed {D : DifferenceAlgebraPackage} (P : DifferenceEquationPackage D) : Prop :=
  P.dimensionFinite ∧ P.linearity

theorem difference_equation_closed_from_evidence {D : DifferenceAlgebraPackage} (P : DifferenceEquationPackage D) (E : DifferenceEquationEvidence P) :
    DifferenceEquationClosed P := by
  exact And.intro E.dimensionFiniteClosed E.linearityClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse