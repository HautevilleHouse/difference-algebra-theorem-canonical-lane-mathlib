import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.PicardVessiot

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

structure DifferenceGaloisPackage {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} {P : PicardVessiotPackage D E} where
  galoisGroup : Type
  galoisCorrespondence : Prop
  solvableGroup : Prop

structure DifferenceGaloisEvidence {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} {P : PicardVessiotPackage D E} (G : DifferenceGaloisPackage D E P) where
  galoisCorrespondenceClosed : G.galoisCorrespondence
  solvableGroupClosed : G.solvableGroup

def DifferenceGaloisClosed {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} {P : PicardVessiotPackage D E} (G : DifferenceGaloisPackage D E P) : Prop :=
  G.galoisCorrespondence ∧ G.solvableGroup

theorem difference_galois_closed_from_evidence {D : DifferenceAlgebraPackage} {E : DifferenceEquationPackage D} {P : PicardVessiotPackage D E} (G : DifferenceGaloisPackage D E P) (Ev : DifferenceGaloisEvidence G) :
    DifferenceGaloisClosed G := by
  exact And.intro Ev.galoisCorrespondenceClosed Ev.solvableGroupClosed

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse