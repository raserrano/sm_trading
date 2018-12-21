Feature: User can see Steem Monster homepage
  
  @login
  Scenario: User visit Steemmonsters page
    Given user visit steemmonster page
    When user clicks login menu option
    Then login form is displayed

  Scenario: User logs in Steemmonsters page
    Given user is in the steemmonsters page and open login form
    When login form has been filled and submited
    Then steemmonsters main page should be loaded