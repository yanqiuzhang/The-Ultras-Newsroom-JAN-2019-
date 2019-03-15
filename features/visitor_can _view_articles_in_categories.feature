Feature: Visitor can view articles in categories
    As a visitor
    In order to view articles within a specific subject
    I would like to be able to filter the articles displayed in categories

    Background:
        Given the following categories exist
            | category              |
            | Lifestyle              |
            | Breaking news    |
            | Health                 |

        Given the following articles exist
            |  title                                                           |  lead                                     |  content                                                                        |   category            |
            |  Voted best mead recipe                           |  Restaurant wins prize           |  Restaurant wins prize for best mead in Sweden         |   Lifestyle             |
            |  Ancient viking grave discovered               |  Kids came across sword      |  Kids come across sword protruding from the earth    |   Breaking news   |
            |  Drinking wine improves general health    |  Drink wine today!                |  Studies show that wine is good for your heart             |   Health               |

        Scenario: A visitor can filter articles within a specific category
            When I visit the site
            And 
