Feature: Journalist can edit and delete articles

    As a Journalist,
    In order to change articles I have already written
    I would like to be able to edit and delete articles
    
    
    Background: 

        Given the following users exist
            | email          | password | role       | id |
            | jocke@craft.se | password | journalist | 1  |

        And the following articles exist
            | title                                     | lead                        | content                                                     | category     | user_id | id |
            | Voted best mead recipe                    | Restaurant wins prize       | Restaurant wins prize for best mead in Sweden               | Lifestyle    |    1    | 1  |
            | Ancient viking grave discovered           | Kids came across sword      | Kids come across sword protruding from the earth            | Breaking News|    1    | 2  |
            | Drinking wine improves general health     | Drink wine today!           | Studies show that wine is good for your heart               | Health       |    1    | 3  |

        And I am logged in as "jocke@craft.se"
        And I visit the "/journalist/articles/1/" page
        Then I should see "Voted best mead recipe"
        And I click "Edit"

    Scenario: Journalist can edit articles
        When I fill in "Title" with "Voted worst mead recipe"
        And I click "Update Article"
        Then I should see "Article was successfully updated."

    @javascript    
    Scenario: Journalist can delete articles
        When I click "Delete"
        And I click the popup
        Then I should see "Article was successfully deleted."