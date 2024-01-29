*** Settings ***
Resource    ../main.robot


*** Variables ***
&{Elements_login}
...                     Input_Username=//input[@name="username"]
...                     Input_Password=//input[@name="password"]
...                     Button_Login=//button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
