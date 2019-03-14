Feature: Visitor can choose language

As a Visitor
In order to be able to read articles in my native language,
I would like to switch between languages English and Swedish

Background: 
    Given I visit the site

Scenario: Visitor can change language to English
    When I click "English"
    Then I should see "Log in"

Scenario: Visitor can change language to Svenska
    When I click "Svenska"
    Then I should see "Logga in"

