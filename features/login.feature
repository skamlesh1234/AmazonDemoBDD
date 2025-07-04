Feature: Login functionality
    As a registered user
    I want to be able to log in to the application
    So that I can access my account

    Scenario: Successful login with valid credentials
        Given the user is on the login page
        When the user enters valid username and password
        And clicks the login button
        Then the user should be redirected to the dashboard
        And see a welcome message

    # add more Scenarios as needed
    Scenario: Unsuccessful login with invalid credentials
        Given the user is on the login page
        When the user enters invalid username and password
        And clicks the login button
        Then an error message should be displayed
        And the user should remain on the login page

    Scenario: Login with empty credentials
        Given the user is on the login page
        When the user clicks the login button without entering credentials
        Then an error message should be displayed indicating that fields cannot be empty

    Scenario: Login with special characters in username and password
        Given the user is on the login page
        When the user enters special characters in the username and password fields
        And clicks the login button
        Then an error message should be displayed indicating invalid characters
