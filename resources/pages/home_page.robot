*** Settings ***
Resource    ../main.robot


*** Variables ***
&{Home}
...         Input_Prove=//input[@placeholder="Search"]
...         PIM=(//a[@class="oxd-main-menu-item"])[2]
...         Add_Employee=(//a[@class="oxd-topbar-body-nav-tab-item"])[2]


*** Keywords ***
Given I access the PIM
    Wait Until Element Is Visible    ${Home.Input_Prove}    10
    Click Element    ${Home.PIM}

When I click in "add employee"
    Wait Until Element Is Visible    ${Home.Add_Employee}    10
    Click Element    ${Home.Add_Employee}
