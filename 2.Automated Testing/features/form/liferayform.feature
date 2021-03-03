
Feature: Liferay Form 122548
        As a user i would like to have a Liferay form. 
        So that I can fill in the fields and submit the information, 
        receiving a message in case of success.


@S01
Scenario: Submit the form successfully
    
    Given that i access the form page
    When i submit the form by filling in the required fields:
        |What is your name?                 | Rodrigo                |
        |What is the date of your birth?    | 11171987               |
        |Why did you join the testing area? | Because a like to test |
    Then i should see the message "Information sent successfully!"

@S02
Scenario: Submit the form with required fields empty
    
    Given that i access the form page
    When i submit the form without fill any required fields
    Then i should see the message "This field is required." for the fields:
        |What is your name?                 |
        |What is the date of your birth?    |
        |Why did you join the testing area? |