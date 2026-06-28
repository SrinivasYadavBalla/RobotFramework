*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Loginkeywords.robot


*** Variables ***
${Browser}  chrome 
${SiteUrl}  https://www.saucedemo.com/
${user}    standard_user
${pwd}    secret_sauce


*** Test Cases ***
Login Test
    Open My Browser   ${SiteUrl}  ${Browser}
    Enter UserName    ${user}     
    Enter password    ${pwd}
    Click SignIn    ${btnsignIn}
    Title Should Be     Swag Labs
    Close All Browsers

