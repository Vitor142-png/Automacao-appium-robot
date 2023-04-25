* Settings *
Documentation       Passos da tela dashboard na aplicação Sodexo Consumer App

Resource        ${EXECDIR}/resources/_elements/${APP_OS}/dashboard_elements.robot

* Keywords *
Mostrar o saldo em cartão
    Wait Until Element Is Visible   ${icone_mostrar_saldo}
    Click Element                   ${icone_mostrar_saldo}

Valor do saldo deve ser
    [Arguments]     ${valor}

    Wait Until Element Is Visible   ${saldo_usuario}
    Element Text Should Be          ${saldo_usuario}    ${valor}