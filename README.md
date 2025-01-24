# Dart Null Safety Gotcha: Direct Access of Nullable Variables

This example demonstrates a subtle error related to Dart's null safety and how it interacts with direct variable access vs. access within a null-aware context.

The `MyClass` has a nullable integer variable `_myVariable`. While the `myMethod` uses the null-aware operator (`??`) to safely handle potential `null` values, directly accessing `_myVariable` outside this context (as shown in `main()`) leads to a runtime exception.  This highlights the importance of consistently employing null-aware operators or null checks when dealing with potentially nullable variables.

## How to Reproduce

1. Copy and paste `bug.dart` into a Dart editor.
2. Run the code.
3. Observe the runtime exception indicating a null check error.

## Solution

The solution (`bugSolution.dart`) demonstrates proper handling using either the null-aware operator or a conditional check before accessing the variable.