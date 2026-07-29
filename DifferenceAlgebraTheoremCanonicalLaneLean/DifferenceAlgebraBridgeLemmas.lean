import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceAlgebraTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  -- bridge closure: the admitted object's conclusion holds
  let O : DifferenceAdmittedObject := A.object
  DifferenceWitnessClosed O

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferenceAlgebraTheoremCanonicalLaneLean
end HautevilleHouse
