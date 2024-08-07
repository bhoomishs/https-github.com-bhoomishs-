*** Settings ***
Library    SeleniumLibrary
Documentation    For loop in robot Framework

*** Variables ***

*** Test Cases ***
TC_1
    FOR     ${a}    IN RANGE    10  20
    Log to Console      ${a}
    END

TC_2
    @{items}    create list     10  11  12  13  14  15  16  17  18  19  20
    FOR     ${var}      IN  @{items}
    LOG to Console  ${var}
    exit for loop if    ${var} == 18
    END