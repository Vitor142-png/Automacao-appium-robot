* Settings *
Documentation       Passos do de fidelidade na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/fidelidade_elements.robot

* Keywords *

clicar em botão fidelidade
    Swipe    426    1978    499    132    10000
    Swipe    426    1978    499    132    10000
    Wait Until Element Is Visible     ${btn_fidelidade}        ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_fidelidade}

Validar tela de fidelidade
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validarfidelidade}        ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validarfidelidade}        ${message}

validar menu estabelecimentos   
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validarestabelecimentos}        ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validarestabelecimentos}         ${message}

clicar no menu extrato
    Wait Until Element Is Visible     ${btn_extrato}
    Click Element                     ${btn_extrato}

validar menu extrato
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validarExtrato}        ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validarExtrato}         ${message}

clicar no menu resgate
    Wait Until Element Is Visible     ${btn_resgate}
    Click Element                     ${btn_resgate}

validar menu resgate
    Wait Until Element Is Visible     ${validarResgate}
    Click Element                     ${validarResgate}