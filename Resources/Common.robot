*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BLANK_BROWSER}                about:blank
@{WINDOW_POSTION}               0               0
@{WINDOW_SIZE}                  1920            1080

*** Keywords ***
Begin Web Test
    #Set Selenium Speed                          .2s
    Set Selenium Timeout        10s
    Open Browser                ${BLANK_BROWSER}         ${BROWSER_TYPE}
    Set Window Position         ${WINDOW_POSTION}[0]     ${WINDOW_POSTION}[1]
    Set Window Size             ${WINDOW_SIZE}[0]        ${WINDOW_SIZE}[1]

End Web Test
    Close ALL Browsers
