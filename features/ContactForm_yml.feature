Feature: Fill a simple form with yml data

  Scenario: Data driven with yml
    When I open automationpractice website
    And click contact us
    Then I contact the customer service with yml dataset "DataSet1"

  Scenario Outline: Data driven with yml and data sets
    When I open automationpractice website
    And click contact us
    Then I contact the customer service with yml dataset "<data_set>"
  Examples:
    |data_set|
    |DataSet1|
    |DataSet2|

