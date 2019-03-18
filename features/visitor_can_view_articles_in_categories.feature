Feature: Visitor can view articles in categories
    As a visitor
    In order to view articles within a specific subject
    I would like to be able to filter the articles displayed in categories

    Background:
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

    Scenario: A visitor can see and filter articles within a specific category
        When I visit the site
        Then I should see "Breaking News"
        And I should see "Politics"
        And I should see "Sport"
        And I should see "Lifestyle"
        And I should see "Health"
        When I click "Breaking News" 
        Then I should see "Ancient viking grave discovered"
        And I should see "Kids came across sword"
        And I should not see "Voted best mead recipe"