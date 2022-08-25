*** Settings ***
Documentation           This suite tests the Bacon website

Library                 SeleniumLibrary
Resource                ../config/config.resource
Resource                ../resources/bacon_resource.resource
Test Setup              Open Browser        ${URL}      ${BROWSER}
# Test Teardown           Close Browser

*** Test Cases ***
Test case 01 - Fill field in Paragraphs
    [Documentation]     This test checks the demo text generator for the number of paragraphs

    Maximize Browser Window

    fill the field "3"
    click 'Give Me Bacon' button
    check if text start whit "Bacon ipsum dolor amet"
    check if paragraph quantity is correct