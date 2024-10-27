┌─╴It
  Equals           ← |2.2 ⌅(⊃($"failed asserting `_` is equal to `_`":) ≍|⊃($"failed asserting `_` is NOT equal to `_`":) (¬≍))
  DoesntEqual      ← |2.2 °Equals
  HasSameRank      ← |2.2 ⌅(⊃($"failed asserting `_` has the same rank as `_`":) (=⧻△⊙(⧻△))|⊃($"failed asserting `_` has a different rank to `_`":) (≠⧻△⊙(⧻△)))
  HasDifferentRank ← |2.2 °HasSameRank
  Contains         ← |2.2 ⌅(⊃($"failed asserting `_` contains the value `_`":) (≠0/+♭⌕)|⊃($"failed asserting `_` does NOT contain the value `_`":) (=0/+♭⌕))
  DoesntContain    ← |2.2 °Contains

  Throws!      ← |2.2 $"failed asserting that function does throw an error" ⍣^0 1 0
  DoesntThrow! ← |2.2 :≍1:$"failed asserting that function does NOT throw an error: `_`" : . °□⊢⇌ ⍣^0 {⊙∘} 1
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

  ⍤It~DoesntThrow!(⍤It~Equals 2 2)
  ⍤It~DoesntThrow!(⍤ It~Equals @2 @2)
  ⍤It~DoesntThrow!(⍤ It~Equals "2 2" "2 2")
  ⍤It~DoesntThrow!(⍤ It~Equals [2 2] [2 2])
  ⍤It~DoesntThrow!(⍤ It~Equals [[2 2 2]] [[2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~Equals [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~Equals {} {})
  ⍤It~DoesntThrow!(⍤ It~Equals {1} {1})
  ⍤It~DoesntThrow!(⍤ It~Equals {[1] "hello"} {[1] "hello"})
  ⍤It~DoesntThrow!(⍤ It~Equals 3.3333333333333333 3.3333333333333333)
  ⍤It~DoesntThrow!(⍤ It~Equals 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equals

  # It~NotEquals tests
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual 3 2)
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual @3 @4)
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual "2 2" "2 3")
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual "2 2" "2 2 ")
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual " 2 2" "2 2 ")
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual [1 2] [2 2])
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual [2 2 2] [2 2])
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual [[2 2 3]] [[2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual {} {1})
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual {2} {1})
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual {[1] "hello"} {[1] "hello!"})
  ⍤It~DoesntThrow!(⍤ It~DoesntEqual 3.333333333333333 3.333333333333334)

  ⍤It~Throws!(⍤(It~DoesntEqual 2 2))
  ⍤It~Throws!(⍤ It~DoesntEqual @2 @2)
  ⍤It~Throws!(⍤ It~DoesntEqual "2 2" "2 2")
  ⍤It~Throws!(⍤ It~DoesntEqual [2 2] [2 2])
  ⍤It~Throws!(⍤ It~DoesntEqual [[2 2 2]] [[2 2 2]])
  ⍤It~Throws!(⍤ It~DoesntEqual [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~Throws!(⍤ It~DoesntEqual {} {})
  ⍤It~Throws!(⍤ It~DoesntEqual {1} {1})
  ⍤It~Throws!(⍤ It~DoesntEqual {[1] "hello"} {[1] "hello"})
  ⍤It~Throws!(⍤ It~DoesntEqual 3.3333333333333333 3.3333333333333333)
  ⍤It~Throws!(⍤ It~DoesntEqual 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equals

  # It~HasSameRank tests
  ⍤It~DoesntThrow!(⍤It~HasSameRank 2 2)
  ⍤It~Throws!(⍤It~HasSameRank 2 [2])
  ⍤It~Throws!(⍤It~HasDifferentRank 2 2)
  ⍤It~DoesntThrow!(⍤It~HasDifferentRank 2 [2])

  # It~Contains tests
  ⍤It~DoesntThrow!(
    ⍤It~Contains 2 [
      [[1 3 3 3]
       [1 2 3 4] # Searches deep into the array
       [1 1 1 1]
      ]
    ]
  )

  ⍤It~DoesntThrow!(⍤It~Contains 2 [1 2 3])
  ⍤It~DoesntThrow!(⍤It~Contains @u "uiua")
  ⍤It~DoesntThrow!(⍤It~Contains "ui" "uiua")
  ⍤It~DoesntThrow!(⍤It~Contains {{1}} {{1} [2] 3})

  ⍤It~Throws!(⍤It~Contains 2 [1 1 3])
  ⍤It~Throws!(⍤It~Contains @q "uiua")
  ⍤It~Throws!(⍤It~Contains "au" "uiua")
  ⍤It~Throws!(⍤It~Contains {{9}} {{1} [2] 3})

  ⍤It~Throws!(⍤It~DoesntContain 2 [1 2 3])
  ⍤It~Throws!(⍤It~DoesntContain @u "uiua")
  ⍤It~Throws!(⍤It~DoesntContain "ui" "uiua")
  ⍤It~Throws!(⍤It~DoesntContain {{1}} {{1} [2] 3})

  ⍤It~DoesntThrow!(⍤It~DoesntContain 2 [1 1 3])
  ⍤It~DoesntThrow!(⍤It~DoesntContain @q "uiua")
  ⍤It~DoesntThrow!(⍤It~DoesntContain "au" "uiua")
  ⍤It~DoesntThrow!(⍤It~DoesntContain {{9}} {{1} [2] 3})

  ⍤ It~Equals "failed asserting `2` is equal to `1`" ◌:It~Equals 1 2
  ⍤ It~Equals "failed asserting `[2 3 1]` contains the value `1`" ◌:It~Contains 1 [2 3 1]
  ⍤ It~Equals "failed asserting `[2 3 1]` does NOT contain the value `5`" ◌:It~DoesntContain 5 [2 3 1]
  ⍤ It~Equals "failed asserting `[5]` has the same rank as `5`" ◌:It~HasSameRank 5 [5]
└─╴
