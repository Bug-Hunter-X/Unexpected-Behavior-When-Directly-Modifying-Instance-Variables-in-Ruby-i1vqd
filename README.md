# Unexpected Behavior When Directly Modifying Instance Variables in Ruby

This repository demonstrates a common issue in Ruby where directly manipulating instance variables using `instance_variable_set` can lead to unexpected behavior and bypass intended access control mechanisms.

## The Problem
The `bug.rb` file shows a simple class `MyClass`. While it provides a `value` method to access the internal `@value` instance variable, directly modifying `@value` via `instance_variable_set` bypasses this method and can lead to inconsistencies if other parts of the code rely on the controlled access.

## The Solution
The `bugSolution.rb` demonstrates a better approach using attr_accessor, attr_reader, or attr_writer for controlled access and modification, preventing direct manipulation of instance variables and promoting maintainability and predictability.

## How to Run
1. Clone this repository.
2. Run the Ruby files using `ruby bug.rb` and `ruby bugSolution.rb`.
3. Compare the outputs to observe the difference in behavior.
