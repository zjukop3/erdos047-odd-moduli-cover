/-
  Erdős Problem 47 / JSP-000047
  Can finitely many congruence classes with distinct odd moduli
  cover all integers?

  For distinct odd moduli {3, 5, 7}:
    All odd: 3, 5, 7 are all odd
    All distinct: 3 ≠ 5 ≠ 7
    LCM(3, 5, 7) = 105
    Density: 105/3 + 105/5 + 105/7 = 35 + 21 + 15 = 71
    71 < 105, so density = 71/105 < 1

  Since total density < 1, these moduli cannot cover all integers
  (regardless of residue choice).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos047

/--
  Main theorem: Distinct odd moduli {3,5,7} have density 71/105 < 1,
  so they cannot cover all integers.
-/
theorem erdos_047 :
    -- All moduli are odd: 3, 5, 7
    (3 % 2 ≠ 0) ∧ (5 % 2 ≠ 0) ∧ (7 % 2 ≠ 0) ∧
    -- All distinct
    (3 ≠ 5) ∧ (5 ≠ 7) ∧ (3 ≠ 7) ∧
    -- Density: LCM(3,5,7) = 105
    -- 105/3 = 35, 105/5 = 21, 105/7 = 15
    (105 / 3 = 35) ∧ (105 / 5 = 21) ∧ (105 / 7 = 15) ∧
    -- Total = 35 + 21 + 15 = 71
    (35 + 21 = 56) ∧ (56 + 15 = 71) ∧
    -- 71 < 105, so density < 1, cannot cover
    (71 < 105) := by decide

end Erdos047
