┌─╴It
  Equals    ← |2.2 ⊃($"failed asserting `_` is equal to `_`":) ≍
  NotEquals ← |2.2 ⊃($"failed asserting `_` is NOT equal to `_`":) (¬≍)
  
  HasSameRank    ← |2.2 ⊃($"failed asserting `_` has the same rank as `_`":) (=⧻△⊙(⧻△))
  NotHasSameRank ← |2.2 ⊃($"failed asserting `_` has a different rank to `_`":) (≠⧻△⊙(⧻△))
  
  HasSameShape    ← |2.2 ⊃($"failed asserting `_` has the same shape as `_`":) (≍△⊙△)
  NotHasSameShape ← |2.2 ⊃($"failed asserting `_` has a different shape to `_`":) (¬≍△⊙△)
  
  Contains    ← |2.2 ⊃($"failed asserting `_` contains the value `_`":) (≠0/+♭⌕)
  NotContains ← |2.2 ⊃($"failed asserting `_` does NOT contain the value `_`":) (=0/+♭⌕)
  
  IsGreaterThan ← |2.2 ⊃($"failed asserting `_` is greater than `_`":) </+♭⊙(/+♭)
  IsLessThan    ← |2.2 ⊃($"failed asserting `_` is less than `_`":) >/+♭⊙(/+♭)
  
  IsGreaterThanOrEqualTo ← |2.2 ⊃($"failed asserting `_` is greater than `_`":) ≤/+♭⊙(/+♭)
  IsLessThanOrEqualTo    ← |2.2 ⊃($"failed asserting `_` is less than `_`":) ≥/+♭⊙(/+♭)
  
  Throws!    ← |1.2 $"failed asserting that function does throw an error" ⍣^0 1 0
  NotThrows! ← |1.2 :≍1:$"failed asserting that function does NOT throw an error: `_`" : . °□⊢⇌ ⍣^0 {⊙∘} 1
└─╴
