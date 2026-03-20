*** Settings ***
Documentation                                   This is some basic info about the whole suite
Library                                         SeleniumLibrary
Resource                                        ../Resources/Common.robot
Resource                                        ../Resources/CrmApp.robot
Test Setup                                      Begin Web Test
Test Teardown                                   End Web Test

#Run the script:
#robot -d results Tests/Crm.robot               To run all tests in a file.
#robot -d results -i smoke Tests/Crm.robot      To run tagged tests in a file.
#robot -d results Tests                         To run all tests in a directory.
#robot -d results -N "Full Regression" Tests    To run all tests with custom name in a directory.

*** Variables ***
${BROWSER_TYPE}                                 chrome
${URL}                                          https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL}                            admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD}                         Password123!

*** Test Cases ***
Homepage Should Load
    [Documentation]                             Test the homepage
    [Tags]                                      1001      Smoke         Login
    CrmApp.Go To "Home" Page

Should Be Able To Log In With Valid Credentials
    [Documentation]                             Test the login happy path
    [Tags]                                      1002      Smoke         Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}

Should Be Able To Log Out
    [Documentation]                             Test the logout
    [Tags]                                      1004      Smoke         Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should Be Able To Add New Customer
    [Documentation]                             Test adding a new customer
    [Tags]                                      1006      Smoke         Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Valid Credentials        ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out
