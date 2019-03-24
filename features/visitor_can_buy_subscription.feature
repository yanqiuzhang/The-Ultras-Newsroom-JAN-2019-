Feature: Visitor can buy a subscription

    As a user
    In order to get access to premium articles
    I would like to be able to buy a subscription

    Background:
        Given the following users exist
            | email             | password | role    |
            | visitor@craft.se  | password | visitor | 
        And I am logged in as "visitor@craft.se"

    Scenario: Visitor can buy a subscription
        When I visit the site
        And I click "Subscribe"
        And wait for 2 seconds
        And I fill in the payment form with valid cc credentials
        And I click "Submit payment"
        Then I should see "You have successfully subscribed!"
        And my role should be changed to "subscriber"
