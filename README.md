# assert_it.ua

The assert_it.ua package provides methods to help with writing expressive test code
in [uiua](https://www.uiua.org/).

- Builds easy to read failure descriptions
- Results in familiar looking code for users coming from more traditional
  programming languages
- Easy to read consistent interface

## Example Usage

```
┌─╴test
  ~ "git: github.com/ethancarlsson/uassertit" ~ It

  AddTwo ← + 2

  ⍤ It~Equals 1 AddTwo 1
  # Error: failed asserting `3` is equal to `1`
  ⍤ It~Contains 5 ⇡5
  # Error: failed asserting `[0 1 2 3 4]` contains the value `5`

└─╴
```

Note how the `assert` symbol (`⍤`) is still needed, this package doesn't run
the assertion, instead it produce arguments for assertions.

Since assertions just create values on the stack you can write custom assertion
messages by consuming the first return value of the assertion.

```
┌─╴test
  ~ "git: github.com/ethancarlsson/uassertit" ~ It

  ⍤ $"you can include a custom message like this _" It~Equals 2 3
  # Error: you can include a custom message like this failed asserting `3` is equal to `2`
  ⍤ ⊂ "or like this " It~Equals 2 3
  # Error: or like this failed asserting `3` is equal to `2`
  ⍤ "you can also ignore the underlying message and just use your own" ◌ It~Equals 2 3
  # Error: you can also ignore the underlying message and just use your own
└─╴
```

## Interface

All assertions in this package accept two arguments and return two values.
The first argument is the expected value and the second is the actual value.
The first return value is the assertion message and the second either 1 or 0
depending on if the assertion succeeded or not. The assertion message will
always be returned, even if the assertion succeeds.

### Exceptions

The rules for interfaces described above do not apply to the macros `Throws!` and
`NotThrows!`, these macros accept only accept one function. They return a
message and either a 1 or 0 as in other functions.
