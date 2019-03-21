Feature: List articles on the landing page

    As a Visitor
    In order to choose an article to read
    I would like to be able to see the articles listed on a page

    Background: 
        Given the following users exist
            | email          | password | role       |
            | jocke@craft.se | password | journalist |
            | per@mail.se    | password | journalist |

        And the following articles exist
            | title                                 | lead                   | content                                          | category      | user           | approved |
            | Voted best mead recipe                | Restaurant wins prize  | Restaurant wins prize for best mead in Sweden    | Lifestyle     | jocke@craft.se | true     |
            | Ancient viking grave discovered       | Kids came across sword | Kids come across sword protruding from the earth | Breaking News | jocke@craft.se | true     |
            | Drinking wine improves general health | Drink wine today!      | Studies show that wine is good for your heart    | Health        | jocke@craft.se | true     |

    Scenario: View list of articles on the landing page
        When I visit the site
        Then I should see "Voted best mead recipe"
        And I should see "Ancient viking grave discovered"