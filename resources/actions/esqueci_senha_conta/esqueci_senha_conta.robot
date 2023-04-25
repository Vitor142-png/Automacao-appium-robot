* Settings *
Documentation       Passos do home cards esqueci senha do conta na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/esqueci_senha_conta_elements.robot
* Keywords *

clicar botao esqueci senha da conta
    Wait Until Element Is Visible        ${btn_esqueci_senha_conta}      ${GLOBAL_TIMEOUT}           
    Click Element                        ${btn_esqueci_senha_conta}

Então valido botao esqueci senha
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validar_esqueci_a_senha}         ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validar_esqueci_a_senha}         ${message}

Validar alerta para inserir um CPF
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validar_popUp_insirir_cpf}         ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validar_popUp_insirir_cpf}           ${message}

clicar botao confirmar
    Wait Until Element Is Visible        ${btn_confirmar}      ${GLOBAL_TIMEOUT}           
    Click Element                        ${btn_confirmar} 

validar alertar para preencher os campos
    [Arguments]     ${message}
    Wait Until Element Is Visible                 ${msg_preencher_campos}     ${GLOBAL_TIMEOUT}           
    Element Text Should Be                        ${msg_preencher_campos}       ${message}

preencher campo crie uma senha segura
    [Arguments]      ${user}
    Wait Until Element Is Visible                    ${input_campo_crie_sennha_segura}            ${GLOBAL_TIMEOUT}
    Input Text                                       ${input_campo_crie_sennha_segura}                ${user}

preencher campo repita sua senha segura
    [Arguments]      ${user}
    Wait Until Element Is Visible                    ${input_campo_confirme_sua_senha}            ${GLOBAL_TIMEOUT}
    Input Text                                       ${input_campo_confirme_sua_senha}                ${user}

validar mensagem de erro por deixar campo confirme sua senha em branco
    [Arguments]     ${message}
    Wait Until Element Is Visible                 ${validar_alert_senhas_diferentes}      ${GLOBAL_TIMEOUT}           
    Element Text Should Be                        ${validar_alert_senhas_diferentes}       ${message}

clicar botao voltar
    Wait Until Element Is Visible        ${btn_voltar}      ${GLOBAL_TIMEOUT}           
    Click Element                        ${btn_voltar} 

Então validar tela de inicio do app
    [Arguments]     ${message}
    Wait Until Element Is Visible                 ${validar_tela_inicial}       ${GLOBAL_TIMEOUT}       
    Element Text Should Be                        ${validar_tela_inicial}       ${message}