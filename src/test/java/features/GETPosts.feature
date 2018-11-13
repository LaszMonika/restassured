Feature: GETPosts
  Verify different GET operations using REST-assured

  Scenario: Verify one author of the post
    Given I perform GET operation for "/posts"
    Then I should see the author name as "Karthik KK"

  Scenario: Verify collection of authors in the post
    Given I perform GET operation for "/posts"
    Then I should see the author names

  Scenario: Verify Parameter of Get
    Given I perform GET operation for "/posts"
    Then I should see verify GET Parameter

  @smoke
  Scenario: Verify GET operation with bearer authentication token
    Given I perform authentication operation for "/auth/login" with body
      | email              | password  |
      | kartmcad@gmail.com | haha12345 |
    Given I perform GET operation for "/posts"
    Then I should see the author name as "Karthik KK"