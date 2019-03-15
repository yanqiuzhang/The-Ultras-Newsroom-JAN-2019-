Feature: Journalist can create articles

    As a journalist
    In order write articles
    I would like to be able to create an article

    Scenario: Journalist can create article
        Given we have 1 user with email "jocke@craft.se" and role "journalist"
        And I am logged in as 'jocke@craft.se'
        And I visit the journalist page
        Then I fill in "Title" with "Vikings living amongst us"
        And I fill in "Lead" with "Hurra"
        And I fill in "Content" with "Vad kul"
        When I click "Save Article"
        Then I should see "Article was successfully created."