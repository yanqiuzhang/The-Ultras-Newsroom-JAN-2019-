Feature: Visitor can view articles in categories
    
    As a visitor
    In order to view articles within a specific subject
    I would like to be able to filter the articles displayed in categories

    Background:
        Given the following users exist
            | email          | password | role       |
            | jocke@craft.se | password | journalist |
            | per@mail.se    | password | journalist |

        And the following articles exist
            | title                                 | lead                   | content                                          | category      | user           | approved |
            | Voted best mead recipe                | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | Lifestyle     | jocke@craft.se | false     |
            | Ancient viking grave discovered       | Kids came across sword | Kids come across sword protruding from the earth | Breaking News | jocke@craft.se | true     |
            | Drinking wine improves general health | Drink wine today!      | Studies show that wine is good for your heart    | Health        | jocke@craft.se | true     |

    Scenario: A visitor can see and filter articles within a specific category
        When I visit the site
        Then I should see "Breaking News"
        And I should see "Lifestyle"
        And I should see "Health"
        When I click "Breaking News" 
        Then I should see "Ancient viking grave discovered"
        And I should see "Kids came across sword"
        And I should not see "Voted best mead recipe"