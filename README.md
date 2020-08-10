Bash Test
=========

A basic test-running suite for Bash
===================================

## Installation

Add `bash-test` as a dev requirement using [Submarine](https://github.com/tomchkk/submarine):

```sh
submarine require --dev https://github.com/tomchkk/bash-test
```

## Usage

### Tests scripts

Test script functions take the following format:

> snake-case of the script file basename, followed by `::test_`, suffixed with
> the name of the test: e.g.: `script_name::test_my_test`

A `::before_each` and `::after_each` function can be specified as part of a test suite to encapsulate the running of each test function - e.g.:
`script_name::before_each`

### Assertions

The following assertions are available:

 - `bash_test::assert_equals "$expected" "$actual"`
 - `bash_test::assert_contains "$string" "$substring"`
 - `bash_test::assert_not_contains "$string" "$substring"`
 - `bash_test::assert_empty "$value"`

### Run

A test suite can be run for the `./tests` directory from within a project using [Submarine](https://github.com/tomchkk/submarine) by issuing the following command:

```sh
./submodules/bin/bash-test ./tests
```
