*** Settings ***
Resource    ../main.robot


*** Variables ***
&{Add}
...         Input_Name=//input[@name="firstName"]
...         Input_MiddleName=//input[@name="middleName"]
...         Input_LastName=//input[@name="lastName"]
...         Button_Save=//button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
...         Button_IMG=//button[@class="oxd-icon-button oxd-icon-button--solid-main employee-image-action"]
...         Prove_Added=//h6[text()="Personal Details"]


*** Keywords ***
Then I add ${Quantity} new employees
    FOR    ${i}    IN RANGE    ${Quantity}
        Wait Until Element Is Visible    ${Add.Input_Name}
        Input Text    ${Add.Input_Name}    ${Employee.firstName} ${i}
        Input Text    ${Add.Input_MiddleName}    ${Employee.middleName}
        Input Text    ${Add.Input_LastName}    ${Employee.lastName}
        Choose File    ${Add.Button_IMG}    ${Employee.profile_photo}
        Wait Until Element Is Visible    ${Add.Button_Save}
        Click Button    ${Add.Button_Save}
        Wait Until Element Is Visible    ${Add.Prove_Added}    10
        When I click in "add employee"
    END
