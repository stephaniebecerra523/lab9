# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Stephanie Becerra, Gabi Zachos

## Summary

In this lab, we learned how sequential circuits use latches to store data even when the inputs change. We also learned how to create a D-latch and use multiplexers and demultiplexers to build a four-byte memory system.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
- Structural Verilog creates feedback loops that Vivado may reject during synthesis. Behavioral Verilog allows us to create latches without these errors.

### What is the meaning of always @(*) in a sensitivity block?
- always @(*) means the block runs whenever any signal used inside it changes. This makes it useful for combinational circuits that need to update their outputs when inputs change.

### What importance is memory to digital circuits?
- Memory allows digital circuits to store data and remember previous values even when inputs change. This is important for computers because they need to store information and instructions to perform tasks.
