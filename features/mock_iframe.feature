Feature: Mocking an iframe
  In order to control the workflow during testing
  As a developer
  I want to be able to mock the content of iframes

  Scenario: Go to mocked page via iframe
    Given I am on the "http://localhost:8081/test" page
    Then I should see "Mocking your page" inside "mock_iframe"

  Scenario: Sending the return URLs
    Given I am on the "http://localhost:8081/test" page
    When I click the "Send" button
    Then Inside "mock_iframe" I should see the following links:
      | link   |
      | error  |
      | cancel |
