Feature: Adding

   Scenario Outline: Add two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
      | input | output |
      | 2+2   | 5      |
      | 98+1  | 99     |
