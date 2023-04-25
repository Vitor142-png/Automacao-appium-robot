* Settings *
Documentation       Passos do login na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/login_elements.robot

* Keywords *


Recusar trafego  
        Wait Until Element Is Visible     ${ask_app_not to_track}      ${GLOBAL_TIMEOUT}
        Click Element   ${ask_app_not to_track}
Preencher campos de login
    [Arguments]      ${user}
    Wait Until Element Is Visible        ${input_cpf}          ${GLOBAL_TIMEOUT}
    Input Text       ${input_cpf}        ${user}[cpf]
    Input Text       ${input_password}   ${user}[password]
    
Preencher campo de CPF
    [Arguments]      ${user}
    Wait Until Element Is Visible        ${input_cpf}          ${GLOBAL_TIMEOUT}
    Input Text       ${input_cpf}        ${user}[cpf]
    #Input Text       ${input_cpf}        ${user}[cpf]

Preencher campo de senha    
    [Arguments]      ${user}
    Wait Until Element Is Visible   ${input_password}
    Input Text       ${input_password}   ${user}[password]
    

Clicar no botao login
    Wait Until Element Is Visible     ${btn_entrar}         10
    Click Element                     ${btn_entrar}
    


Validar mensagem de erro do login
    [Arguments]     ${message}

    Wait Until Element Is Visible   ${alert_login_erro}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${alert_login_erro}   ${message}

# Aceitar os cookies
#     Wait Until Element Is Visible       ${msg_cookie}           ${GLOBAL_TIMEOUT}
#     Click Element                       ${btn_aceitar_cookies}

Validar se foi feito o login 
    [Arguments]     ${message}
    Element Text Should Be         ${validarLoginNegado}   ${message}

Validar mensagem de CPF não cadastrado
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validarMsgCpfNCadastrado}    ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validarMsgCpfNCadastrado}    ${message}

Aceitar os cookies
    Wait Until Element Is Visible     ${msg_cookie}             ${GLOBAL_TIMEOUT}
    # Element Text Should Be            ${msg_cookie}             A Sodexo utiliza alguns tipos de tecnologia que visam melhorar a navegação, uso e experiência em nosso app, assim como direcionar conteúdo de marketing, a partir de algumas informações coletadas durante o uso do app. Para saber mais, acesse a nossa Política de Privacidade
    Wait Until Element Is Visible     ${btn_aceitar_cookies}    ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_aceitar_cookies}
    
Usuario deve estar logado
    [Arguments]     ${user}
    Wait Until Element Is Visible       ${user_name_id}    ${GLOBAL_TIMEOUT}
    Element Text Should Be              ${user_name_id}    Olá, ${user}[nome] 


Decidir depois localização
    Wait Until Element Is Visible     ${btn_decidir_depois}         ${GLOBAL_TIMEOUT}
    # Wait Until Page Contains          Usaremos sua localização para enviar promoções e ofertas em mercados, restaurantes e lojas perto de você.
    Click Element                     ${btn_decidir_depois}

Decidir depois mensagens
    # Wait Until Page Contains          Receba notificações para aproveitar todas as vantagens de ser um usuário Sodexo.
    Wait Until Element Is Visible     ${btn_decidir_depois}         ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_decidir_depois}

Recusar o cadastro de dispositivo
    Wait Until Element Is Visible        ${btn_agora_nao}
    Run Keyword And Ignore Error         ${btn_agora_nao}
    Wait Until Element Is Visible        ${btn_agora_nao}
    Click Element                        ${btn_agora_nao}
Permitir Notificações
    Click Text      QUERO RECEBER NOTIFICAÇÕES

Permitir Localização
    Click Text      PERMITIR LOCALIZAÇÃO
    Wait Until Element Is Visible        ${btn_Durante_uso_app}             ${GLOBAL_TIMEOUT}
    Click Element   ${btn_Durante_uso_app}