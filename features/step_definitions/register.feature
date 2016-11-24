Feature: Register

    Scenario: Register on Agile Testers
        Given I go to the Agile Testers registration page
        When I fill the register fields
        And I click in register
        Then I go to the home page
