Feature: Validate the objectives of the mock banking exercise

  Background:
    Given I am on the page

  Scenario: Verify the right number of values appear on the screen
    When I count for amounts on the screen
    |amount_1|amount_2|amount_4|amount_5|amount_6|ttl_value|
    Then I verify count of the amounts on the screen


  Scenario Outline: Verify the values on the screen are greater than zero
    When I check <amounts> on the screen
    Then values on the screen are greater than zero
    Examples:
      | amounts  |
      | amount_1 |
      | amount_2 |
      | amount_4 |
      | amount_5 |
      | amount_6 |

  Scenario: Verify the total balance is correct based on the values listed on the screen
    When I check for all balances
    Then Total balance is correct based on values listed on screen

  Scenario Outline: Verify the values are formatted as currencies
    When I check <amounts> on the screen
    Then all the balances are formatted as currencies
    Examples:
      | amounts  |
      | amount_1 |
      | amount_2 |
      | amount_4 |
      | amount_5 |
      | amount_6 |

  Scenario: Verify the total balance matches the sum of values
    When I check for all balances
    Then Total balance matches the sum of the values

