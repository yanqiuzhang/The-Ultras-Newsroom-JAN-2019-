Feature: Visitor can read a specific article

    As a Visitor
    In order to read an article
    I would like to be able to click on an article and have it displayed

    Background: 
        Given the following users exist
            | email          | password | role       |
            | jocke@craft.se | password | journalist | 

        And the following articles exist
            | title                                     | lead                        | content                                                     | category     | user           |
            | Voted best mead recipe                    | Restaurant wins prize       | Restaurant wins prize for best mead in Sweden               | Lifestyle    | jocke@craft.se |
            | Ancient viking grave discovered           | Kids came across sword      | Kids come across sword protruding from the earth            | Breaking News| jocke@craft.se |
            | Drinking wine improves general health     | Drink wine today!           | Studies show that wine is good for your heart               | Health       | jocke@craft.se |

    Scenario: Visitor can read a specific article
        When I visit the site
        Then I should see "Voted best mead recipe"
        And I should see "Ancient viking grave discovered"
        When I click "Voted best mead recipe"
        Then I should see "Voted best mead recipe"
        Then I should see "Restaurant wins prize for best mead in Sweden"

