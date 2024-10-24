┌─╴Assert
  AreBothLenZero ↚ =0 + ∩⧻
  IsEqual        ↚ ≍

  NotEqual ← 1⍤⊃$"Failed asserting _ is NOT equal to _" (¬≍)
  Equal    ← 1⍤⊃$"Failed asserting _ is equal to _" ≍
└─╴

┌─╴test
  # Assert~Equal tests
  ⍤"Should succeed"⍣Assert~Equal 0 2 2
  ⍤"Should error" ¬⍣Assert~Equal 0 3 2
  ⍤"Should succeed"⍣Assert~Equal 0 @2 @2
  ⍤"Should error" ¬⍣Assert~Equal 0 @3 @4
  ⍤"Should succeed"⍣Assert~Equal 0 "2 2" "2 2"
  ⍤"Should error" ¬⍣Assert~Equal 0 "2 2" "2 3"
  ⍤"Should error" ¬⍣Assert~Equal 0 "2 2" "2 2 "
  ⍤"Should error" ¬⍣Assert~Equal 0 " 2 2" "2 2 "
  ⍤"Should succeed"⍣Assert~Equal 0 [2 2] [2 2]
  ⍤"Should error" ¬⍣Assert~Equal 0 [1 2] [2 2]
  ⍤"Should error" ¬⍣Assert~Equal 0 [2 2 2] [2 2]
  ⍤"Should succeed"⍣Assert~Equal 0 [[2 2 2]] [[2 2 2]]
  ⍤"Should error" ¬⍣Assert~Equal 0 [[2 2 3]] [[2 2 2]]
  ⍤"Should error" ¬⍣Assert~Equal 0 [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]]
  ⍤"Should succeed"⍣Assert~Equal 0 [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]]
  ⍤"Should succeed"⍣Assert~Equal 0 {} {}
  ⍤"Should succeed"⍣Assert~Equal 0 {1} {1}
  ⍤"Should error" ¬⍣Assert~Equal 0 {} {1}
  ⍤"Should error" ¬⍣Assert~Equal 0 {2} {1}
  ⍤"Should succeed"⍣Assert~Equal 0 {[1] "hello"} {[1] "hello"}
  ⍤"Should error" ¬⍣Assert~Equal 0 {[1] "hello"} {[1] "hello!"}
  ⍤"Should succeed"⍣Assert~Equal 0 3.3333333333333333 3.3333333333333333
  ⍤"Should error" ¬⍣Assert~Equal 0 3.333333333333333 3.333333333333334
  ⍤"Should succeed"⍣Assert~Equal 0 3.3333333333333333501823918203 3.33333333333333333928309182038 # This is to show the limitations in Assert~Equal

  # Assert~NotEqual tests
  ⍤"Should error" ¬⍣Assert~NotEqual 0 2 2
  ⍤"Should succeed"⍣Assert~NotEqual 0 3 2
  ⍤"Should error" ¬⍣Assert~NotEqual 0 @2 @2
  ⍤"Should succeed"⍣Assert~NotEqual 0 @3 @4
  ⍤"Should error" ¬⍣Assert~NotEqual 0 "2 2" "2 2"
  ⍤"Should succeed"⍣Assert~NotEqual 0 "2 2" "2 3"
  ⍤"Should succeed"⍣Assert~NotEqual 0 "2 2" "2 2 "
  ⍤"Should succeed"⍣Assert~NotEqual 0 " 2 2" "2 2 "
  ⍤"Should error" ¬⍣Assert~NotEqual 0 [2 2] [2 2]
  ⍤"Should succeed"⍣Assert~NotEqual 0 [1 2] [2 2]
  ⍤"Should succeed"⍣Assert~NotEqual 0 [2 2 2] [2 2]
  ⍤"Should error" ¬⍣Assert~NotEqual 0 [[2 2 2]] [[2 2 2]]
  ⍤"Should succeed"⍣Assert~NotEqual 0 [[2 2 3]] [[2 2 2]]
  ⍤"Should succeed"⍣Assert~NotEqual 0 [[2 2 3] [2 2 2]] [[2 2 2] [2 2 2]]
  ⍤"Should error" ¬⍣Assert~NotEqual 0 [[2 2 2] [2 2 2]] [[2 2 2] [2 2 2]]
  ⍤"Should error" ¬⍣Assert~NotEqual 0 {} {}
  ⍤"Should error" ¬⍣Assert~NotEqual 0 {1} {1}
  ⍤"Should succeed"⍣Assert~NotEqual 0 {} {1}
  ⍤"Should succeed"⍣Assert~NotEqual 0 {2} {1}
  ⍤"Should error" ¬⍣Assert~NotEqual 0 {[1] "hello"} {[1] "hello"}
  ⍤"Should succeed"⍣Assert~NotEqual 0 {[1] "hello"} {[1] "hello!"}
  ⍤"Should error" ¬⍣Assert~NotEqual 0 3.3333333333333333 3.3333333333333333
  ⍤"Should succeed"⍣Assert~NotEqual 0 3.333333333333333 3.333333333333334
└─╴
