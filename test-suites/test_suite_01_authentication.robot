*** Settings ***
Documentation     Test suite to validate the login action in website:
...               https://the-internet.herokuapp.com/login

Resource          ../keywords/keywords_01_authentication.robot

Suite Setup       Open navigator
Suite Teardown    Close navigator

Test Template     Login with invalid credentials

***Variables***
${USERNAME}       tomsmith
${PASSWORD}       SuperSecretPassword!


*** Test Cases ***
Invalid username
    ...    invalid
    ...    ${PASSWORD}
    ...    Your username is invalid!

Invalid password
    ...    ${USERNAME}
    ...    invalid
    ...    Your password is invalid!

Empty username and password
    ...    ${EMPTY}
    ...    ${EMPTY}
    ...    Your username is invalid!





# Scenario: Login with valid credentials
#                 [Tags]                                                                                          existproduct
#                 When I search for the product "Blouse"
#                 I should see the searched product "Blouse"

# Scenario: Login with invalid credentials
#                 [Tags]                                                                                          noproduct
#                 When I search for the product "non existing product"
#                 Then I should see the message "No results were found for your search "non existing product""
