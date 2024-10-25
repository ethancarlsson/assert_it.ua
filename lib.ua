┌─╴It
  NotEquals    ← ⊃$"failed asserting _ is NOT equal to _" (¬≍)
  Equals       ← ⊃$"failed asserting _ is equal to _" ≍
  HasRank      ← ⊃$"failed asserting _ has the same rank as _" =⧻△⊙(⧻△)
  DoesntThrow! ← $"failed asserting that function does NOT throw an error: _" : . °□⊢⇌ ⍣^0 {⊙∘} 1
  Throws!      ← $"failed asserting that function does throw an error" ⍣^0 1 0
└─╴

┌─╴test
  # It~Equal tests
  ⍤It~Throws!(⍤ It~Equals 3 2)
  ⍤It~Throws!(⍤ It~Equals @3 @4)
  ⍤It~Throws!(⍤ It~Equals "2 2" "2 3")
  ⍤It~Throws!(⍤ It~Equals "2 2" "2 2 ")
  ⍤It~Throws!(⍤ It~Equals " 2 2" "2 2 ")
  ⍤It~Throws!(⍤ It~Equals [1 2] [2 2])
  ⍤It~Throws!(⍤ It~Equals [2 2 2] [2 2])
  ⍤It~Throws!(⍤ It~Equals [[2 2 3]] [[2 2 2]])
  ⍤It~Throws!(⍤ It~Equals [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~Throws!(⍤ It~Equals {} {1})
  ⍤It~Throws!(⍤ It~Equals {2} {1})
  ⍤It~Throws!(⍤ It~Equals {[1] "hello"} {[1] "hello!"})
  ⍤It~Throws!(⍤ It~Equals 3.333333333333333 3.333333333333334)

  ⍤It~DoesntThrow!(⍤(It~Equals 2 2))
  ⍤It~DoesntThrow!(⍤ It~Equals @2 @2)
  ⍤It~DoesntThrow!(⍤ It~Equals "2 2" "2 2")
  ⍤It~DoesntThrow!(⍤ It~Equals [2 2] [2 2])
  ⍤It~DoesntThrow!(⍤ It~Equals [[2 2 2]] [[2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~Equals [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~Equals {} {})
  ⍤It~DoesntThrow!(⍤ It~Equals {1} {1})
  ⍤It~DoesntThrow!(⍤ It~Equals {[1] "hello"} {[1] "hello"})
  ⍤It~DoesntThrow!(⍤ It~Equals 3.3333333333333333 3.3333333333333333)
  ⍤It~DoesntThrow!(⍤ It~Equals 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equal

  # It~NotEquals tests
  ⍤It~DoesntThrow!(⍤ It~NotEquals 3 2)
  ⍤It~DoesntThrow!(⍤ It~NotEquals @3 @4)
  ⍤It~DoesntThrow!(⍤ It~NotEquals "2 2" "2 3")
  ⍤It~DoesntThrow!(⍤ It~NotEquals "2 2" "2 2 ")
  ⍤It~DoesntThrow!(⍤ It~NotEquals " 2 2" "2 2 ")
  ⍤It~DoesntThrow!(⍤ It~NotEquals [1 2] [2 2])
  ⍤It~DoesntThrow!(⍤ It~NotEquals [2 2 2] [2 2])
  ⍤It~DoesntThrow!(⍤ It~NotEquals [[2 2 3]] [[2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~NotEquals [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~NotEquals {} {1})
  ⍤It~DoesntThrow!(⍤ It~NotEquals {2} {1})
  ⍤It~DoesntThrow!(⍤ It~NotEquals {[1] "hello"} {[1] "hello!"})
  ⍤It~DoesntThrow!(⍤ It~NotEquals 3.333333333333333 3.333333333333334)

  ⍤It~Throws!(⍤(It~NotEquals 2 2))
  ⍤It~Throws!(⍤ It~NotEquals @2 @2)
  ⍤It~Throws!(⍤ It~NotEquals "2 2" "2 2")
  ⍤It~Throws!(⍤ It~NotEquals [2 2] [2 2])
  ⍤It~Throws!(⍤ It~NotEquals [[2 2 2]] [[2 2 2]])
  ⍤It~Throws!(⍤ It~NotEquals [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~Throws!(⍤ It~NotEquals {} {})
  ⍤It~Throws!(⍤ It~NotEquals {1} {1})
  ⍤It~Throws!(⍤ It~NotEquals {[1] "hello"} {[1] "hello"})
  ⍤It~Throws!(⍤ It~NotEquals 3.3333333333333333 3.3333333333333333)
  ⍤It~Throws!(⍤ It~NotEquals 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equal

  # It~Rank tests
  ⍤It~DoesntThrow!(⍤It~HasRank 2 2)
  ⍤It~Throws!(⍤It~HasRank 2 [2])
└─╴
