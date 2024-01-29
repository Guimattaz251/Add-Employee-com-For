*** Settings ***
Library     SeleniumLibrary
### SETUP E TEARDOWN
Resource    ./shared/Setup_Teardown.robot
### DATA
Resource    ./data/data_resource.robot
Resource    ./data/employee_data.robot
### PAGES
Resource    ./pages/login_page.robot
Resource    ./pages/home_page.robot
Resource    ./pages/new_employee_page.robot
