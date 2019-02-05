*** Settings ***
Documentation    BuiltIn: http://robotframework.org/robotframework/latest/libraries/BuiltIn.html
...              FakerLibrary: https://guykisel.github.io/robotframework-faker/
...              SeleniumLibrary: http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
...              String : http://robotframework.org/robotframework/latest/libraries/String.html


Library       BuiltIn                                    WITH NAME    std
Library       FakerLibrary                               WITH NAME    faker
Library       SeleniumLibrary                            WITH NAME    selenium
Library       String                                     WITH NAME    string


