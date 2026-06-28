*** Settings ***
Library   SeleniumLibrary 
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]  ${username}
    Input Text   ${txt_loginUserName}      ${username}

Enter password
    [Arguments]  ${password}
    Input Password  ${txt_loginPassword}    ${password}

Click SignIn
    [Arguments]    ${btnsignIn}
    Click Button  ${btnsignIn}

