Feature: Editor can publish articles

    As an editor,
    In order to make sure that the articles have good standards
    I would like only editors to be able to publish articles.

    Background:
        Given the following users exist
            | email          | password | role       |
            | jocke@craft.se | password | journalist |
            | per@mail.se    | password | editor |

        And the following articles exist
            | title                                 | lead                   | content                                          | category      | user           | approved |
            | Voted best mead recipe                | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | Lifestyle     | jocke@craft.se | false     |
            | Ancient viking grave discovered       | Kids came across sword | Kids come across sword protruding from the earth | Breaking News | jocke@craft.se | true     |
            | Drinking wine improves general health | Drink wine today!      | Studies show that wine is good for your heart    | Health        | jocke@craft.se | true     |
            
        And I am logged in as "per@mail.se"
    
    Scenario: Editor can publish articles
        Given I visit the editor page
        Then I should see "Voted best mead recipe"
        And I click "Voted best mead recipe"
        And I should see "Publish"
        And I click "Publish"
        Then I should see "Article was successfully published."
    
    Scenario: Editor can't publish published articles [sad path]
        Given I visit the editor page
        Then I should see "Ancient viking grave discovered"
        And I click "Ancient viking grave discovered"
        Then I should not see "Publish"
