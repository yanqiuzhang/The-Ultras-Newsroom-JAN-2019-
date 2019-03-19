Feature: Journalist can edit and delete articles

    As a Journalist,
    In order to change articles I have already written
    I would like to be able to edit and delete articles
    
    
    Background: 
        Given the following articles exist
            | title                                     | lead                        | content                                                     | category     |
            | Voted best mead recipe                    | Restaurant wins prize       | Restaurant wins prize for best mead in Sweden               | Lifestyle    |
            | Ancient viking grave discovered           | Kids came across sword      | Kids come across sword protruding from the earth            | Breaking News|
            | Drinking wine improves general health     | Drink wine today!           | Studies show that wine is good for your heart               | Health       |

        And the following users exist
            | email          | password | role       |
            | jocke@craft.se | password | journalist |
        And I am logged in as "jocke@craft.se"
        And I visit the journalist page
        Then I should see "Voted best mead recipe"
        And I click "Voted best mead recipe"
        And I click "Edit"

    Scenario: Journalist can edit articles
        When I fill in "Title" with "Voted worst mead recipe"
        And I click "Update Article"
        Then I should see "Article was successfully updated."
        When I click "Back"
        Then I should see "Voted worst mead recipe"

    @javascript    
    Scenario: Journalist can delete articles
        When I click "Delete"
        And I click the popup
        Then I should see "Article was successfully deleted."
        Then I should not see "Voted best mead recipe"