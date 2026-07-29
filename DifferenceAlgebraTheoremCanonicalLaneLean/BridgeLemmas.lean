import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse