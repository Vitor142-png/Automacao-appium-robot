* Settings *
Documentation       Passos do home cards na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/alterar_senha_elements.robot
* Keywords *




preencher campo senha atual
    [Arguments]      ${user}
    Wait Until Element Is Visible   ${formulario_alterar_senha}   ${GLOBAL_TIMEOUT}
    Input Text       ${input_senhaAtual}        ${user}

preencher campo nova senha
    [Arguments]      ${user}
    Wait Until Element Is Visible   ${input_novaSenha}      ${GLOBAL_TIMEOUT}
    Input Text       ${input_novaSenha}        ${user}

preencher campo de alterar senha
    [Arguments]      ${user}
    Wait Until Element Is Visible   ${formulario_alterar_senha}   ${GLOBAL_TIMEOUT}
    Input Text       ${input_senhaAtual}        ${user}[alterar_senha]
    Input Text       ${input_novaSenha}        ${user}[nova_senha]
    Input Text       ${input_repitaASenha}        ${user}[nova_senha]

Clicar em botao salvar nova senha
    Wait Until Element Is Visible       ${btn_salvarNovaSenha}      30
    Click Element                       ${btn_salvarNovaSenha}

validar mensagem de erro de alterar senha
     [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_alterar_erro}       50
    Element Text Should Be          ${alert_alterar_erro}      ${message}

validar alteracao de senha com sucesso
     [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_alterar_true}      10
    Element Text Should Be          ${alert_alterar_true}      ${message}

validar alertar do campo repita sua senha 
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_repita_senha}       40
    Element Text Should Be          ${alert_repita_senha}      ${message}

Validar alertar de erro no campo nova senha
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_nova_senha}       40
    Element Text Should Be          ${alert_nova_senha}      ${message}

Validar alertar de erro no campo senha atual
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_senha_atual}       40
    Element Text Should Be          ${alert_senha_atual}       ${message}

Validar alerta de erro no campo repita sua senha
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_erro_repita_senha}       40
    Element Text Should Be          ${alert_erro_repita_senha}       ${message}

Validar alertar de erro de senha incompleta
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_erro_falta_digitos}       40
    Element Text Should Be          ${alert_erro_falta_digitos}       ${message}