Feature: The advice CLI
  In order to get some random advice
  As a CLI user
  I want to request advice

  @vcr
  Scenario: get some advice
    When I run `advice please`
    Then the output should contain:
     """
     Don't be afraid to ask questions.
     """
