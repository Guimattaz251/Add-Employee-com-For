*** Settings ***
Resource            ../../resources/main.robot

Test Setup          Access the site to log in
Test Teardown       Close the browser


*** Test Cases ***
TC01: Add 3 employees
    Given I access the PIM
    When I click in "add employee"
    Then I add 3 new employees
