Feature: Validate the objectives of the mock banking exercise

   #TODO Scenario: Verify the right number of values appear on the screen


  Scenario Outline: Verify the values on the screen are greater than zero
    Given I am on the page
    When I check <values> on the screen
    Then values on the screen are greater than zero
    Examples:
    |values|
    |amount_1|
    |amount_2|
    |amount_4|
    |amount_5|
    |amount_6|

  Scenario: Verify the total balance is correct based on the values listed on the screen
    Given I am on the page
    When I check for all balances
    Then Total balance is correct based on values listed on screen

  Scenario: Verify the values are formatted as currencies
    Given I am on the page
    When I check the values of the balances
    Then all the values are formatted as currencies

  Scenario: Verify the total balance matches the sum of values
    Given I am on the page
    When I add all the balances for different values
    Then Total balance matches the sum of the values

