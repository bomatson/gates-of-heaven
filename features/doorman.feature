Feature: Doorman
  In order to enter heaven
  As a CLI
  I want to be as objective as possible

  Scenario: Password too short
    When I run `gates doorman pass`
    Then the output should contain "Password too short"

  Scenario: Password does not have numbers
    When I run `gates doorman password`
    Then the output should contain "Password needs numbers"
