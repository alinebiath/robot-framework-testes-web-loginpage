*** Settings ***

Documentation     Test suite to validate the login action in
...               website: https://the-internet.herokuapp.com/login

Resource          ../keywords/keywords_01_authentication.robot

Suite Setup       Open navigator
Suite Teardown    Close navigator

***Variables***

${USERNAME}       tomsmith
${PASSWORD}       SuperSecretPassword!


*** Test Cases ***

Scenario 01: Successful Login
    Login with valid credentials    ${USERNAME}
    ...                             ${PASSWORD}
    ...                             You logged into a secure area!

Scenario 02: Unsuccessful Login
    [Template]                      Login with invalid credentials
    invalid                         ${PASSWORD}                       Your username is invalid!
    ${USERNAME}                     invalid                           Your password is invalid!
    ${EMPTY}                        ${EMPTY}                          Your username is invalid!



