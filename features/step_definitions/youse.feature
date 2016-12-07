Feature: Youse Test

    Scenario: Register on Youse
        Given I go to the Youse registration page
        When I fill the register fields
        And I click in register
        Then Registration completed

    Scenario: Make a quotation at Youse
      Given I go to the Youse quotation page after login
      When I login in my account
      And Login sucessful
      And I go to the quotation page
      And I fill my name
      And I click in the about auto
      And I fill about the car
      And I click in the next step button
      And I click in to continue
      Then i am in the last page


    Scenario:Login and Logout at Youse
        Given I Login and Logout
        When I login in my account
        And Login sucessful
        And I logout
        Then Registration completed
