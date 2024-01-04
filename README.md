# MiniC Medium Tests

## About

The CS325 coursework spec provides a set of simple tests for your MiniC compiler, and in previous years [students from the Cult of Matt wrote a set of "harder tests"](https://github.com/codethulu/CS325-coursework-tests).

The harder test README succintly states it's goals as follows, which align with this repositories goals:

> Here are a few tests that will test your compiler's ability to handle aspects of the specification which are not tested by the default tests. If you cannot pass these tests, don't panic! As long as you pass the default tests I am sure you are capable of getting a high mark, these tests are for those who want to put their compilers through the wringer!

## Why is this helpful?

I found neither test set fully covered what I wanted testing:

* The simple tests don't exercise the compiler for bugs as fully as I would like.
* The harder tests have some cases I completely disagree with, and some which are technically valid but significantly extend the scope of the coursework.
* Neither test set provide negative testing for expected errors.

As a result of this, I decided to create my own test set to be used in combination with the existing two to fully exercise my compiler -- inspired by the excellent work done by previous students for the harder test set.

## Installation

As with the harder test set:

> Enter the directory where your coursework lives. Clone this repo, and you should be good to go. From there, just run the test script like you would the default tests.

## Recommended test methodology

1. Run (and pass) all the simple tests primarily
2. Install and try to pass all these medium tests
3. Install and try to pass some of the harder tests, excluding:
   * `implicit` - as this perform as a narrowing cast of floats to ints, so should not compiler.
   * `unary2` - this can be passed staying within the spec, but it's a right pain so I wouldn't bother.
   * `lazyeval` - this is only required if you are doing the extension of boolean short-circuiting.
