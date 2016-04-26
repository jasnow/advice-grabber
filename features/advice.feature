Feature: The advice CLI
  In order to get some random advice
  As a CLI user
  I want to request advice

  @vcr
  Scenario: get some advice
    When I run `advice help`

    Then the output should contain:
     """
     Describe available commands or one specific command
     """
