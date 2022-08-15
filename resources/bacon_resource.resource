*** Settings ***
Resource        ../page_objects/home_page.resource

*** Keywords ***
fill the field "2"
    Input Text      ${PARA_FIELD}       2