import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.BridgeLemmas
import DifferenceAlgebraTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

def ConstrainedDifferenceAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_algebra_endgame (A : AdmissibleClass) :
    ConstrainedDifferenceAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse