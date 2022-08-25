*** Settings ***
Resource        ../page_objects/home_page.resource

*** Keywords ***
fill the field "${FILL_TEXT}"
    ${VALUE}=       Set Variable      ${FILL_TEXT}
    Log To Console      Valor é ${VALUE}
    IF      ${FILL_TEXT} < 100 and ${FILL_TEXT} > 0
        Input Text      ${PARAGRAPH_FIELD}       ${FILL_TEXT}
    END
click start with 'Bacon ipsum dolor amet' checkbox
    Click Element       ${START_WITH_BACON_CHECKBOX}

click 'Give Me Bacon' button 
    Click Element       ${GIVE_BUTTON}

check if text start whit "${TEXT}"
    Element Should Contain      ${TEXT_P1}      ${TEXT}

check if paragraph quantity is correct
    ${count}=       Get Element Count        ${NUM_PARAGRAPHS}
    IF  ${VALUE} == ${count}
        Log To Console      Correto ${count}
    END