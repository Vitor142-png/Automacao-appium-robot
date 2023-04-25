* Settings *
Documentation       Passos do login na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/cadastro_elements.robot

* Keywords *



Preencher campo cpf
    [Arguments]      ${user}
    Input Test       ${input_campoCpf} ${user}[cpf]

Clicar no botao cadastrese 
    Sleep 5
    Wait Until Element Is Visible     ${btn_cadastrese}
    Click Element                     ${btn_cadastrese}

Validar mensagem de insira seu CPF
    [Arguments]     ${message}
    Swipe    561    368    523    1572   10000
    Wait Until Element Is Visible   ${alert_insiraCpf}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_insiraCpf}   ${message}

Validar mensagem de insira seu Nome
    [Arguments]     ${message}
    Swipe    561    368    523    1572   10000
    Wait Until Element Is Visible   ${alert_insiraSeuNome}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_insiraSeuNome}   ${message}

Validar mensagem de insira seu email
    [Arguments]     ${message}
    Swipe    561    368    523    1572   10000
    Wait Until Element Is Visible   ${alert_insiraSeuEmail}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_insiraSeuEmail}   ${message}

Validar mensagem de insira seu numero
    [Arguments]     ${message}
    Swipe    561    368    523    1572   10000
    Wait Until Element Is Visible   ${alert_insiraSeuNumeroCelular}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_insiraSeuNumeroCelular}   ${message}

Validar mensagem de insira sua dara de nascimento
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_insiraSuaDataNascimento}    ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_insiraSuaDataNascimento}    ${message}

Validar mensagem de insira sua senha
    [Arguments]     ${message}
    Swipe    561    368    523    1572   10000
    Wait Until Element Is Visible   ${alert_insiraSenha}    ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_insiraSenha}    ${message}

Validar mensagem aceitar termos de uso
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_aceitarTermosUso}    ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_aceitarTermosUso}    ${message}

Validar mensagem aceitar termos de privacidade
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${alert_aceitarPoliticaPrivacidade}       ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_aceitarPoliticaPrivacidade}       ${message}

Clicar mo botao cadastrar 
    Wait Until Element Is Visible      ${btn_cadastrar}
    Click Element                      ${btn_cadastrar}

Declarar termos de uso e privacidade
    Wait Until Element Is Visible      ${btn_declaroQueLiTermosUso}
    Click Element                      ${btn_declaroQueLiTermosUso}

    Wait Until Element Is Visible      ${btn_declaroQueLiPoliticaPrivacidade}
    Click Element                      ${btn_declaroQueLiPoliticaPrivacidade}

Preencher campo insira CPF
    [Arguments]      ${user} 
    Wait Until Element Is Visible        ${input_campoCpf}        ${GLOBAL_TIMEOUT}
    Input Text                           ${input_campoCpf}        ${user}[cpf]

Preencher campo nome 
    [Arguments]      ${user}
    Wait Until Element Is Visible        ${input_nomeCompleto}        ${GLOBAL_TIMEOUT}
    Input Text                           ${input_nomeCompleto}        ${user}[nome]

Preencher campo insira email
    [Arguments]      ${user}  
    Input Text                       ${input_emailPessoal}       ${user}[email]

Preencher campo insira celular
    [Arguments]      ${user}
    Input Text       ${input_celularPessoal}      ${user}[celular]

Preencher campo insira Data nascimento
    [Arguments]      ${user}
    Input Text       ${input_dataNascimento}      ${user}[nascimento]

Preencher campo criar senha
    [Arguments]      ${user}
    input Text       ${input_criarSenha}                 ${user}[password]
    
Swipe down
    Swipe    592    2148    554    681   10000





