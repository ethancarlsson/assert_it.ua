┌─╴It
  Equals ← |2.2 ⌅(
    ⊃($"failed asserting `_` is equal to `_`":) ≍
  | ⊃($"failed asserting `_` is NOT equal to `_`":) (¬≍)
  )
  NotEquals ← |2.2 °Equals
  
  HasSameRank ← |2.2 ⌅(
    ⊃($"failed asserting `_` has the same rank as `_`":) (=⧻△⊙(⧻△))
  | ⊃($"failed asserting `_` has a different rank to `_`":) (≠⧻△⊙(⧻△))
  )
  NotHasSameRank ← |2.2 °HasSameRank
  
  HasSameShape ← |2.2 ⌅(
    ⊃($"failed asserting `_` has the same shape as `_`":) (≍△⊙△)
  | ⊃($"failed asserting `_` has a different shape to `_`":) (¬≍△⊙△)
  )
  NotHasSameShape ← |2.2 °HasSameShape
  
  Contains ← |2.2 ⌅(
    ⊃($"failed asserting `_` contains the value `_`":) (≠0/+♭⌕)
  | ⊃($"failed asserting `_` does NOT contain the value `_`":) (=0/+♭⌕)
  )
  NotContains ← |2.2 °Contains
  
  Throws!    ← |2.2 $"failed asserting that function does throw an error" ⍣^0 1 0
  NotThrows! ← |2.2 :≍1:$"failed asserting that function does NOT throw an error: `_`" : . °□⊢⇌ ⍣^0 {⊙∘} 1
└─╴
