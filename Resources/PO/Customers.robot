*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER_LABEL}                   Our Happy Customers
${CUSTOMERS_ADD_CUSTOMERS_LINK}             id:new-customer
${CUSTOMERS_SUCCESS_LABEL}                  Success! New customer added.

*** Keywords ***
Click Add Customer Link
    Click Link                               ${CUSTOMERS_ADD_CUSTOMERS_LINK}

Verify Page Loaded
    Wait Until Page Contains                 ${CUSTOMERS_HEADER_LABEL}

Verify Customer Added Successfully
    Wait Until Page Contains                 ${CUSTOMERS_SUCCESS_LABEL}
