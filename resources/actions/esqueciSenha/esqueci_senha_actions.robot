* Settings *
Documentation       Passos do home cards esqueci senha na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/esqueci_senha_elements.robot
* Keywords *



Preencher campo repita sua senha
    [Arguments]      ${user}
     Wait Until Element Is Visible  ${input_campoRepitaSenha}
    Input Text       ${input_campoRepitaSenha}        ${user}

Preencher campo CVV do cartao
    [Arguments]      ${user}
    Wait Until Element Is Visible                     ${input_campoCVV}           30
    Input Text       ${input_campoCVV}                ${user}

Valido mensagem de CVV invalido
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validarMsgCpfNCadastrado}     30
    Element Text Should Be          ${validarMsgCpfNCadastrado}     ${message}

Valido mensagem de erro no campo senha atual
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validarMsgCpfNCadastrado}     30
    Element Text Should Be          ${validarMsgCpfNCadastrado}     ${message}

validar mensagem de erro de cvv incompleto
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alerta_falta_digitos_CVV}     30
    Element Text Should Be          ${alerta_falta_digitos_CVV}     ${message}


Validar mensagem de erro de CVV ausente
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alerta_insira_CVV}      30
    Element Text Should Be          ${alerta_insira_CVV}      ${message}
    