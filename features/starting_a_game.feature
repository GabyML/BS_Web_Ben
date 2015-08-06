Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"

  Scenario: Creating a new game
    Given I am on "Register"
    When I fill in "Name" with "Richard"
    Then I press "Submit"
    When I follow "Play Game"
    Then I should be on "/Game"

    Given I am on "Register"
    When I fill in "Name" with ""
    When I press "Submit"
    Then I should be on "/Register"
    And should see "Please enter your name"

    Given I am on "Game"
    When I position my ship
    And I press "Start Game"
    Then I should see "Waiting for player2"