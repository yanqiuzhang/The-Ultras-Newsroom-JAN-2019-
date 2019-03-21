Feature: Visitor can only view part of premium article

    As a Visitor
    In order to get a peek of the premium content
    I would like to only see the title and the lead for premium articles.

    Background:
        Given the following users exist
            | email          | password | role       |
            | jocke@craft.se | password | journalist | 
        Given the following articles exist
            | title                           | lead                   | content                                          | category      | premium | user           |
            | Voted best mead recipe          | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | Lifestyle     | true    | jocke@craft.se |
            | Ancient viking grave discovered | Kids came across sword | Kids come across sword protruding from the earth | Breaking News | false   | jocke@craft.se |

    Scenario: Visitor clicks on premium content and gets notice to subscribe
        When I visit the site
        Then I should see "Voted best mead recipe"
        And I should see "Ancient viking grave discovered"
        And I click "Voted best mead recipe"
        Then I should see "To read this premium article, you need to become a subscriber."
        But when I click "Ancient viking grave discovered"
        Then I should see "Kids come across sword protruding from the earth"
