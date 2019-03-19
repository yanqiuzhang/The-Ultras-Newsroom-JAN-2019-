Feature: Editor can publish articles

    As an editor,
    In order to make sure that the articles have good standards
    I would like only editors to be able to publish articles.

    Background:
        Given the following users exist
            | email          | password | role       |
            | editor@mail.se | password | editor |
        And I am logged in as "editor@mail.se"

        Given the following categories exist
            | name                  | 
            | Breaking News         | 
            | Politics              | 
            | Sport                 | 
            | Lifestyle             | 
            | Health                | 

        Given the following articles exist
            | title                                     | lead                        | content                                                     | category     |
            | Voted best mead recipe                    | Restaurant wins prize       | Restaurant wins prize for best mead in Sweden               | Lifestyle    |
            | Ancient viking grave discovered           | Kids came across sword      | Kids come across sword protruding from the earth            | Breaking News|
            | Drinking wine improves general health     | Drink wine today!           | Studies show that wine is good for your heart               | Health       |

    Scenario: Editor can publish articles
        Given I visit the editor page
        Then I should see "Voted best mead recipe"
        And I click "Voted best mead recipe"
        Then I should see "Edit"
        And I click "Edit"
        And I click "Publish"