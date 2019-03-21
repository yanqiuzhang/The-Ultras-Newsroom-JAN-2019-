Feature: Visitor can only view part of premium article

    As a Visitor
    In order to get a peek of the premium content
    I would like to only see the title and the lead for premium articles.

    Background:
        Given the following articles exist
            | title                                 | lead                   | content                                          | category      | premium |
            | Voted best mead recipe                | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | Lifestyle     | Yes     |
            | Ancient viking grave discovered       | Kids came across sword | Kids come across sword protruding from the earth | Breaking News | No      |
            | Drinking wine improves general health | Drink wine today!      | Studies show that wine is good for your heart    | Health        | No      |


    Scenario: Visitor clicks on premium content and get redirected to subscription page
        When I visit the site
        Then I should see "Voted best mead recipe"
        And I should see "Ancient viking grave discovered"
        And I should see "Drinking wine improves general health"
        And I click "Voted best mead recipe"
        Then I should be on the "subscription" page
