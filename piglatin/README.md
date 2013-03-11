# Pig Latin

Pig Latin is a language game of altering words. To form the Pig Latin of an English word the first consonant (or group of consonants) is moved to the end of the word and an 'ay' is affixed.

Here are some sample inputs and the expected output for the method `PiglatinConverter.convert`:

```
#   INPUT            OUTPUT
# -------------------------------
#   pig             igpay
#   computer        omputercay
#   freedom         eedomfray
#   string          ingstray
#   String          ingstray
#   StrinG          ingstray
#   <EMPTY STRING>  <EMPTY STRING>
#   nil             nil
```

# Your Task

Your assignment is to write the `PiglatinConverter#convert` method that takes in a word and returns the piglatin. 

**You should do this using TDD.**

 1. Write your test cases in piglatin_test.rb
 2. Run your test cases. Watch them fail.
 3. Write the PiglatinConverter#convert method
 4. Run the test cases to test your solution.
 5. Repeat steps 3 and 4 until all tests pass.

