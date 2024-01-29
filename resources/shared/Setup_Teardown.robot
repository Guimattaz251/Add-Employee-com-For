*** Settings ***
Library     SeleniumLibrary
Resource    ../main.robot


*** Keywords ***
Access the site to log in
    Open Browser    ${Setup.Url}    ${Setup.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${Elements_login.Input_Username}    10
    Input Text    ${Elements_login.Input_Username}    ${Setup.Username}
    Wait Until Element Is Visible    ${Elements_login.Input_Password}    10
    Input Text    ${Elements_login.Input_Password}    ${Setup.Password}
    Wait Until Element Is Visible    ${Elements_login.Button_Login}    10
    Click Button    ${Elements_login.Button_Login}

Close the browser
    Close Browser
