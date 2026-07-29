import canonicalLaneMathlib.AdmissibleClass
import DifferenceAlgebraTheoremCanonicalLaneLean.BridgeLemmas
import DifferenceAlgebraTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

def ConstrainedDifferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_difference_endgame (A : AdmissibleClass) :
    ConstrainedDifferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse