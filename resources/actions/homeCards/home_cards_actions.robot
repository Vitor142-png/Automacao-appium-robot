* Settings *
Documentation       Passos do home cards na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/home_cards_elements.robot
* Keywords *
Realizar login
    [Arguments]                         ${user}
    Input Text                          ${input_cpf}        ${user}[cpf]
    Input Text                          ${input_password}   ${user}[password]
    Wait Until Element Is Visible       ${btn_entrar}
    Click Element                       ${btn_entrar}
    Wait Until Element Is Visible       ${msg_cookie}             ${GLOBAL_TIMEOUT}
    # Element Text Should Be            ${msg_cookie}             A Sodexo utiliza alguns tipos de tecnologia que visam melhorar a navegação, uso e experiência em nosso app, assim como direcionar conteúdo de marketing, a partir de algumas informações coletadas durante o uso do app. Para saber mais, acesse a nossa Política de Privacidade
    Wait Until Element Is Visible       ${btn_aceitar_cookies}    ${GLOBAL_TIMEOUT}
    Click Element                       ${btn_aceitar_cookies}
    # Wait Until Page Contains          Receba notificações para aproveitar todas as vantagens de ser um usuário Sodexo.
    Wait Until Element Is Visible       ${btn_decidir_depois}         ${GLOBAL_TIMEOUT}
    Click Element                       ${btn_decidir_depois}
     Wait Until Element Is Visible       ${btn_decidir_depois}         ${GLOBAL_TIMEOUT}
    Click Element                       ${btn_decidir_depois}
    #Wait Until Element Is Visible       ${btn_recusar_cadastro}     ${GLOBAL_TIMEOUT}
    #Click Element                       ${btn_recusar_cadastro}     

clicar icone do olho
    Wait Until Element Is Visible        ${btn_icone_olho}      ${GLOBAL_TIMEOUT}           
    Click Element                        ${btn_icone_olho}
    Sleep      2
    

cadastrar dispositivo
    #Run Keyword And Ignore Error         ${btn_cadastrar_dispositivo}
    #Click Element                        ${btn_cadastrar_dispositivo}
    #Wait Until Element Is Visible        ${btn_agora_nao}
    Run Keyword And Ignore Error             ${btn_agora_nao}
    Wait Until Element Is Visible            ${btn_agora_nao}
    Click Element                            ${btn_agora_nao}
    Run Keyword And Ignore Error             ${btn_agora_nao}
    #Run Keyword And Ignore Error             ${btn_agora_nao}


    #Run Keyword And Ignore Error         ${btn_enviar_por_sms}
    #Wait Until Element Is Visible        ${btn_enviar_por_sms}
    #Click Element                        ${btn_enviar_por_sms} 

    #Run Keyword And Ignore Error         ${input_sms} 
    #Wait Until Element Is Visible        ${input_sms}                   ${GLOBAL_TIMEOUT}
    ##Click Element                        ${input_sms} 
    #Input Text                           ${input_sms}                   ${user}[token]

    #Run Keyword And Ignore Error         ${btn_continuar} 
    #Wait Until Element Is Visible        ${btn_continuar}               ${GLOBAL_TIMEOUT}
    #Click Element                        ${btn_continuar} 
   # Wait Until Element Is Visible        ${btn_cadastrar_dispositivo}           10
    #Click Element                        ${btn_cadastrar_dispositivo}
clicar em cadastrar dispositivo 
   
    Wait Until Element Is Visible        ${btn_cadastrar_dispositivo}             ${GLOBAL_TIMEOUT}
    Click Element                        ${btn_cadastrar_dispositivo}


clicar em enviar por sms
    Wait Until Element Is Visible       ${btn_enviar_por_sms}                     ${GLOBAL_TIMEOUT}
    Click Element                       ${btn_enviar_por_sms}

informar sms
   [Arguments]                           ${user}
    Wait Until Element Is Visible        ${input_sms}          ${GLOBAL_TIMEOUT}
    Click Element                        ${input_sms}  
    Input Text                           ${input_sms}          ${user}[token]

clicar em continuar
    Wait Until Element Is Visible        ${btn_continuar}       ${GLOBAL_TIMEOUT}
    Click Element                        ${btn_continuar}   

validar saldo disponivel
    [Arguments]     ${saldo}
    Wait Until Element Is Visible   ${saldo_conta}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${saldo_conta}   ${saldo}
    Click Element                   ${btn_icone_olho}

clicar em esqueci senha
    Swipe    643    1978    627    213    10000
    Wait Until Element Is Visible       ${btn_esqueci_senha}         
    Click Element                       ${btn_esqueci_senha}
    #Click Element                       ${btn_esqueci_senha}

clicar em alterar senha
 
    Swipe    643    1978    627    213    10000
    Wait Until Element Is Visible         ${btn_alterar_senha}      ${GLOBAL_TIMEOUT} 
    Click Element                         ${btn_alterar_senha}       
    #Click Element                         ${btn_alterar_senha}

Validar formulario de alterar senha
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${formulario_alterar_senha}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${formulario_alterar_senha}    ${message}

clicar em bloquear conta
    Swipe    914    685    85    685    1000
    Swipe    972    693    62    685    1000
    Swipe    948    720    62    716    1000
    #Wait Until Element Is Visible         ${btn_bloqueio}
    #Click Element                         ${btn_bloqueio}
    #Click Element                         ${btn_bloqueio}

Validar pop up de bloqueio
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${pop_up_bloqueio}        ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${pop_up_bloqueio}        ${message}

clicar botão esqueci senha
    Wait Until Element Is Visible         ${clicar_esqueci_senha_cartao}
    Click Element                         ${clicar_esqueci_senha_cartao}

Validar formulario de esqueci senha
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${formulario_esqueci_senha}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${formulario_esqueci_senha}      ${message}

clicar botão ver meu extrato
    Wait Until Element Is Visible         ${clicar_ver_meu_extrato}
    Click Element                         ${clicar_ver_meu_extrato}
    #Click Element                         ${clicar_ver_meu_extrato}

Validar extrato
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${extrato}         ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${extrato}         ${message}

Scroll para direita
# não é isso mais é maios ou menos isso.
  Swipe    886    708    31    708    10000

Validar cartão bloqueado
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${clicar_desbloquear_cartao}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${clicar_desbloquear_cartao}       ${message}

clicar em desbloquear cartão
    Wait Until Element Is Visible         ${clicar_desbloquear_cartao}
    Click Element                         ${clicar_desbloquear_cartao}

validar formulario de desbloquear conta
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${formulario_alterar_senha}   ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${formulario_alterar_senha}    ${message}
    