~ "./lib.ua" ~ It

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

  ⍤It~NotThrows!(⍤It~Equals 2 2)
  ⍤It~NotThrows!(⍤ It~Equals @2 @2)
  ⍤It~NotThrows!(⍤ It~Equals "2 2" "2 2")
  ⍤It~NotThrows!(⍤ It~Equals [2 2] [2 2])
  ⍤It~NotThrows!(⍤ It~Equals [[2 2 2]] [[2 2 2]])
  ⍤It~NotThrows!(⍤ It~Equals [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]])
  ⍤It~NotThrows!(⍤ It~Equals {} {})
  ⍤It~NotThrows!(⍤ It~Equals {1} {1})
  ⍤It~NotThrows!(⍤ It~Equals {[1] "hello"} {[1] "hello"})
  ⍤It~NotThrows!(⍤ It~Equals 3.3333333333333333 3.3333333333333333)
  ⍤It~NotThrows!(⍤ It~Equals 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equals

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
  ⍤It~Throws!(⍤ It~NotEquals 3.3333333333333333501823918203 3.33333333333333333928309182038) # This is to show the limitations in It~Equals

  # It~HasSameRank tests
  ⍤It~NotThrows!(⍤It~HasSameRank 2 2)
  ⍤It~Throws!(⍤It~HasSameRank 2 [2])
  ⍤It~Throws!(⍤It~NotHasSameRank 2 2)
  ⍤It~NotThrows!(⍤It~NotHasSameRank 2 [2])

  # It~HasSameShape tests
  ⍤It~NotThrows!(⍤It~HasSameShape 2 2)
  ⍤It~Throws!(⍤It~HasSameShape [2] [2 3])
  ⍤It~Throws!(⍤It~NotHasSameShape 2 2)
  ⍤It~NotThrows!(⍤It~NotHasSameShape [2] [2 3])

  # It~Contains tests
  ⍤It~NotThrows!(
    ⍤It~Contains 2 [
      [[1 3 3 3]
       [1 2 3 4] # Searches deep into the array
       [1 1 1 1]
      ]
    ]
  )

  ⍤It~NotThrows!(⍤It~Contains 2 [1 2 3])
  ⍤It~NotThrows!(⍤It~Contains @u "uiua")
  ⍤It~NotThrows!(⍤It~Contains "ui" "uiua")
  ⍤It~NotThrows!(⍤It~Contains {{1}} {{1} [2] 3})

  ⍤It~Throws!(⍤It~Contains 2 [1 1 3])
  ⍤It~Throws!(⍤It~Contains @q "uiua")
  ⍤It~Throws!(⍤It~Contains "au" "uiua")
  ⍤It~Throws!(⍤It~Contains {{9}} {{1} [2] 3})

  ⍤It~Throws!(⍤It~NotContains 2 [1 2 3])
  ⍤It~Throws!(⍤It~NotContains @u "uiua")
  ⍤It~Throws!(⍤It~NotContains "ui" "uiua")
  ⍤It~Throws!(⍤It~NotContains {{1}} {{1} [2] 3})

  ⍤It~NotThrows!(⍤It~NotContains 2 [1 1 3])
  ⍤It~NotThrows!(⍤It~NotContains @q "uiua")
  ⍤It~NotThrows!(⍤It~NotContains "au" "uiua")
  ⍤It~NotThrows!(⍤It~NotContains {{9}} {{1} [2] 3})

  ⍤It~Equals "failed asserting `2` is equal to `1`" ◌:It~Equals 1 2
  ⍤It~Equals "failed asserting `[2 3 1]` contains the value `1`" ◌:It~Contains 1 [2 3 1]
  ⍤It~Equals "failed asserting `[2 3 1]` does NOT contain the value `5`" ◌:It~NotContains 5 [2 3 1]
  ⍤It~Equals "failed asserting `[5]` has the same rank as `5`" ◌:It~HasSameRank 5 [5]
└─╴
