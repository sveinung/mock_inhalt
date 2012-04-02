Feature: Mocking an iframe
  In order to control the workflow during testing
  As a developer
  I want to be able to mock the content of iframes

  Scenario: Go to mocked page via iframe
    Given I have a page with a mocked iframe
    When The page gets loaded
    Then I should see the mocked page

