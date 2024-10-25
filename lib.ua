┌─╴It
  NotEquals  ← ⊃$"failed asserting _ is NOT equal to _" (¬≍)
  Equals     ← ⊃$"failed asserting _ is equal to _" ≍
  HasRank    ← ⊃$"failed asserting _ has the same rank as _" =⧻△⊙(⧻△)
  NotThrows! ← $"failed asserting that function does NOT throw an error: _" : . °□⊢⇌ ⍣^0 {⊙∘} 1
  Throws!    ← $"failed asserting that function does throw an error" ⍣^0 1 0
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

  ⍤It~NotThrows!(⍤(It~Equals 2 2))
  ⍤It~NotThrows!(⍤ It~Equals @2 @2)
  ⍤It~NotThrows!(⍤ It~Equals "2 2" "2 2")
  ⍤It~NotThrows!(⍤ It~Equals [2 2] [2 2])
  ⍤It~NotThrows!(⍤ It~Equals [[2 2 2]] [[2 2 2]])
  ⍤It~NotThrows!(⍤ It~Equals [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~NotThrows!(⍤ It~Equals {} {})
  ⍤It~NotThrows!(⍤ It~Equals {1} {1})
  ⍤It~NotThrows!(⍤ It~Equals {[1] "hello"} {[1] "hello"})
  ⍤It~NotThrows!(⍤ It~Equals 3.3333333333333333 3.3333333333333333)
  ⍤It~NotThrows!(⍤ It~Equals 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equal

  # It~NotEquals tests
  ⍤It~NotThrows!(⍤ It~NotEquals 3 2)
  ⍤It~NotThrows!(⍤ It~NotEquals @3 @4)
  ⍤It~NotThrows!(⍤ It~NotEquals "2 2" "2 3")
  ⍤It~NotThrows!(⍤ It~NotEquals "2 2" "2 2 ")
  ⍤It~NotThrows!(⍤ It~NotEquals " 2 2" "2 2 ")
  ⍤It~NotThrows!(⍤ It~NotEquals [1 2] [2 2])
  ⍤It~NotThrows!(⍤ It~NotEquals [2 2 2] [2 2])
  ⍤It~NotThrows!(⍤ It~NotEquals [[2 2 3]] [[2 2 2]])
  ⍤It~NotThrows!(⍤ It~NotEquals [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~NotThrows!(⍤ It~NotEquals {} {1})
  ⍤It~NotThrows!(⍤ It~NotEquals {2} {1})
  ⍤It~NotThrows!(⍤ It~NotEquals {[1] "hello"} {[1] "hello!"})
  ⍤It~NotThrows!(⍤ It~NotEquals 3.333333333333333 3.333333333333334)

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
  ⍤It~NotThrows!(⍤It~HasRank 2 2)
  ⍤It~Throws!(⍤It~HasRank 2 [2])
└─╴
