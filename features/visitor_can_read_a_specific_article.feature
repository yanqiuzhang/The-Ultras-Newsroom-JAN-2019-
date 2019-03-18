Feature: Visitor can read a specific article

    As a Visitor
    In order to read an article
    I would like to be able to click on an article and have it displayed

    Background: 
        Given the following articles exist
        |  title                            |  lead                      |  content                                           |  
        |  Voted best mead recipe           |  Restaurant wins prize     |  Restaurant wins prize for best mead in Sweden     |
        |  Ancient viking grave discovered  |  Kids came across sword    |  Kids come across sword protruding from the earth  |

    Scenario: Visitor can read a specific article
        When I visit the site
        Then I should see "Voted best mead recipe"
        And I should see "Ancient viking grave discovered"
        When I click "Voted best mead recipe"
        And I should see "Voted best mead recipe"
        When I click "Back"      