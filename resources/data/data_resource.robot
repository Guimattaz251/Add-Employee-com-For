*** Settings ***
Resource    ../main.robot


*** Variables ***
&{Setup}
...         Url=https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
...         Browser=chrome
...         Username=Admin
...         Password=admin123
