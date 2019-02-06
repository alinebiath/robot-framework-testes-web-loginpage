*** Settings ***

Resource      libraries.robot

*** Variables ***

${URL}        https://the-internet.herokuapp.com/login
${BROWSER}    chrome


*** Keywords ***

###Setup and Teardown Begin
Open navigator
    selenium.Open Browser                     ${URL}
    ...                                       ${BROWSER}
    selenium.Maximize Browser Window
Close navigator
    selenium.Close Browser
###Setup and Teardown End

Login with invalid credentials
    [Arguments]                               ${username}
    ...                                       ${password}
    ...                                       ${error_msg}

    selenium.Input Text                       id=username
    ...                                       ${username}

    selenium.Input Password                   id=password
    ...                                       ${password}

    selenium.Click Element                    css=#login > button

    selenium.Wait Until Element Is Visible    id=flash
    ...                                       timeout=15s

    selenium.Element Should Contain           id=flash
    ...                                       ${error_msg}







