*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login Test
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text      id=user-name    standard_user
    Input Password  id=password     secret_sauce
    Click Button    id=login-button
    Title Should Be    Swag Labs
    Sleep    10
    Close Browser