Feature: Regitration Functionality
    As a new user i want to register on the
    portal to with my all the details.
    Scenario Outline: Register with all the valid credantails
        Given user at registation page
        When user enter "<name>" , "<lastname>" credantails it should register
        And enter click button
        Then the user should redirected to dashboard
        And see a welcome message
        Examples:
            | name    | lastname |
            | kamlesh | 22       |
            | Raju    | 31       |
            | Monu    | 34       |
            | Amit    | 67       |
            | Shakti  | 18       |

    Scenario Outline: Register with all the Invalid credantails
        Given user at registation page
        When user enter "<name>" , "<lastname>" credantails it should register
        And enter click button
        Then see a error message
        Examples:
            | name       | lastname |
            | "kamlesh"  | 23       |
            | ___        | 21_DD    |
            | 1_.2       | ..       |
            | Amit  ss12 | 23232    |
            | Shaktia2@  | 2323     |