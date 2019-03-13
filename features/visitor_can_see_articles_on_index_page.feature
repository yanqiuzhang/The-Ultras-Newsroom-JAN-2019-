Feature: List articles on the landing page

    As a Visitor
    In order to choose an article to read
    I would like to be able to see the articles listed on a page

  Scenario: View list of articles on the landing page
    When I visit the site
    Then I should see "Breaking news"
    And I should see "Tech news"