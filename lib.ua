┌─╴Assert
  AreBothLenZero ↚ =0 + ∩⧻
  IsEqual        ↚ ≍

  NotEqual   ← ⊃$"failed asserting _ is NOT equal to _" (¬≍)
  Equal      ← ⊃$"failed asserting _ is equal to _" ≍
  Rank       ← ⊃$"failed asserting _ has the same rank as _" =⧻△⊙(⧻△)
  NotErrors! ← $"failed asserting that function does NOT throw an error: _" : . °□⊢⇌ ⍣^0 {⊙∘} 1
  Errors!    ← $"failed asserting that function does throw an error" ⍣^0 1 0
└─╴

┌─╴test
  # Assert~Equal tests
  ⍤Assert~Errors!(⍤ Assert~Equal 3 2)
  ⍤Assert~Errors!(⍤ Assert~Equal @3 @4)
  ⍤Assert~Errors!(⍤ Assert~Equal "2 2" "2 3")
  ⍤Assert~Errors!(⍤ Assert~Equal "2 2" "2 2 ")
  ⍤Assert~Errors!(⍤ Assert~Equal " 2 2" "2 2 ")
  ⍤Assert~Errors!(⍤ Assert~Equal [1 2] [2 2])
  ⍤Assert~Errors!(⍤ Assert~Equal [2 2 2] [2 2])
  ⍤Assert~Errors!(⍤ Assert~Equal [[2 2 3]] [[2 2 2]])
  ⍤Assert~Errors!(⍤ Assert~Equal [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤Assert~Errors!(⍤ Assert~Equal {} {1})
  ⍤Assert~Errors!(⍤ Assert~Equal {2} {1})
  ⍤Assert~Errors!(⍤ Assert~Equal {[1] "hello"} {[1] "hello!"})
  ⍤Assert~Errors!(⍤ Assert~Equal 3.333333333333333 3.333333333333334)

  ⍤Assert~NotErrors!(⍤(Assert~Equal 2 2))
  ⍤Assert~NotErrors!(⍤ Assert~Equal @2 @2)
  ⍤Assert~NotErrors!(⍤ Assert~Equal "2 2" "2 2")
  ⍤Assert~NotErrors!(⍤ Assert~Equal [2 2] [2 2])
  ⍤Assert~NotErrors!(⍤ Assert~Equal [[2 2 2]] [[2 2 2]])
  ⍤Assert~NotErrors!(⍤ Assert~Equal [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤Assert~NotErrors!(⍤ Assert~Equal {} {})
  ⍤Assert~NotErrors!(⍤ Assert~Equal {1} {1})
  ⍤Assert~NotErrors!(⍤ Assert~Equal {[1] "hello"} {[1] "hello"})
  ⍤Assert~NotErrors!(⍤ Assert~Equal 3.3333333333333333 3.3333333333333333)
  ⍤Assert~NotErrors!(⍤ Assert~Equal 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in Assert~Equal

  # Assert~NotEqual tests
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual 3 2)
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual @3 @4)
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual "2 2" "2 3")
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual "2 2" "2 2 ")
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual " 2 2" "2 2 ")
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual [1 2] [2 2])
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual [2 2 2] [2 2])
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual [[2 2 3]] [[2 2 2]])
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual {} {1})
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual {2} {1})
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual {[1] "hello"} {[1] "hello!"})
  ⍤Assert~NotErrors!(⍤ Assert~NotEqual 3.333333333333333 3.333333333333334)

  ⍤Assert~Errors!(⍤(Assert~NotEqual 2 2))
  ⍤Assert~Errors!(⍤ Assert~NotEqual @2 @2)
  ⍤Assert~Errors!(⍤ Assert~NotEqual "2 2" "2 2")
  ⍤Assert~Errors!(⍤ Assert~NotEqual [2 2] [2 2])
  ⍤Assert~Errors!(⍤ Assert~NotEqual [[2 2 2]] [[2 2 2]])
  ⍤Assert~Errors!(⍤ Assert~NotEqual [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤Assert~Errors!(⍤ Assert~NotEqual {} {})
  ⍤Assert~Errors!(⍤ Assert~NotEqual {1} {1})
  ⍤Assert~Errors!(⍤ Assert~NotEqual {[1] "hello"} {[1] "hello"})
  ⍤Assert~Errors!(⍤ Assert~NotEqual 3.3333333333333333 3.3333333333333333)
  ⍤Assert~Errors!(⍤ Assert~NotEqual 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in Assert~Equal

  # Assert~Rank tests
  ⍤Assert~NotErrors!(⍤Assert~Rank 2 2)
  ⍤Assert~Errors!(⍤Assert~Rank 2 [2])
└─╴
