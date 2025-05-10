---
title: Turing Machine
type: structure
---

A Turing machine is a mathematical [[is-a:model of computation]] that defines an abstract machine manipulating symbols on a strip of tape according to a table of rules. A Turing machine can simulate any computer program.

It consists of an infinite tape divided into cells, a head that can read or write symbols to the tape and move the tape one direction or another, a state register, and a finite table of instructions.

The way a Turing machine works is as follows: the machine is given a particular starting state. During every step of computation, the machine looks at the instruction table to see what it should do for its current state.
The instructions in the table tell the machine what to do, i.e. read or write a symbol from the tape, move the tape one cell to the right, etc. It turns out that a Turing machine is equivalent in computational power to the [[equivalent:lambda calculus]].
