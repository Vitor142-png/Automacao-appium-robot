* Settings *
Documentation           Arquivo com cenários da funcionalidade de Meu Perfil

Resource        ${EXECDIR}/resources/support/base.robot
Resource        ${EXECDIR}/resources/_elements/${APP_OS}/meu_perfil_elements.robot


* Keywords *
Clicar em meu perfil 
    Wait Until Element Is Visible     ${btn_meu_perfil}         ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_meu_perfil}

Valido tela de meu perfil
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${valido_tela_meu_perfil}        ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${valido_tela_meu_perfil}        ${message}

Clicar em ver dados pessois
    Sleep   5
    Wait Until Element Is Visible      ${btn_ver_dados_pessoais}         ${GLOBAL_TIMEOUT}
    Click Element                      ${btn_ver_dados_pessoais}
    Sleep  3
    
Alterar nome em seus dados
    Wait Until Element Is Visible        ${input_nome_dados_pessoais}          ${GLOBAL_TIMEOUT}
    Input Text                           ${input_nome_dados_pessoais}           Vitor hugo

Alterar data de nascimento menor de 14 anos
    Wait Until Element Is Visible        ${input_data_nascimento_dados_pessoais}        ${GLOBAL_TIMEOUT}
    Input Text                           ${input_data_nascimento_dados_pessoais}        28052009
Alterar nome com apenas o primeiro nome
    Wait Until Element Is Visible        ${input_nome_dados_pessoais}          ${GLOBAL_TIMEOUT}
    Input Text       ${input_nome_dados_pessoais}        Vitor


Alterar email em seus dados
    Wait Until Element Is Visible        ${input_email_dados_pessoais}         ${GLOBAL_TIMEOUT}
    Input Text       ${input_email_dados_pessoais}        VitorSodex@grr.com

Alterar nome com numero em meus dados
    Wait Until Element Is Visible        ${input_nome_dados_pessoais}          ${GLOBAL_TIMEOUT}
    Input Text                           ${input_nome_dados_pessoais}           Vitor Sodex0

Validar alteração de nome com sucesso
     [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${validar_nome_dados_pessoais}      ${GLOBAL_TIMEOUT}
    #Element Text Should Be          ${validar_nome_dados_pessoais}       ${message}    
    ${menssage_esperada}=     Get Text      locator=${validar_nome_dados_pessoais}
    Log    ${menssage_esperada}
    #Element Text Should Be           ${menssage}      ${menssage_esperada}   
    #SeleniumLibrary.Element Text Should Be 	 locator=${menssage_esperada}	 expected=${menssage_esperada} 	 message=${menssage} 	
    Element Should Contain Text 	 ${validar_nome_dados_pessoais}      ${menssage} 	 ignore_case=False
Clicar em Central de notificacoes
    Sleep   5
    Wait Until Element Is Visible     ${btn_central_notificacao}         ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_central_notificacao}

Alterar data de nascimento em seus dados
    Wait Until Element Is Visible        ${input_data_nascimento_dados_pessoais}        ${GLOBAL_TIMEOUT}
    Input Text                                ${input_data_nascimento_dados_pessoais}        26051999

Alterar celular em seus dados
    Wait Until Element Is Visible        ${input_celular_dados_pessoais}         ${GLOBAL_TIMEOUT}
    Input Text                           ${input_celular_dados_pessoais}         11940028922


Alterar celular com numero com menos de 11 digitos em meus dados
    Wait Until Element Is Visible        ${input_celular_dados_pessoais}         ${GLOBAL_TIMEOUT}
    Input Text                           ${input_celular_dados_pessoais}         1199328344



Validar menu Central de notificações
     [Arguments]     ${message}
    Wait Until Element Is Visible   ${validar_check_promoçoes}             ${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible   ${validar_check_relacionamentos}       ${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible   ${validar_menu_notificações}           ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validar_menu_notificações}           ${message}

Validar alteração de email com sucesso
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${validar_nome_dados_pessoais}      ${GLOBAL_TIMEOUT}
    Element Should Contain Text 	 ${validar_nome_dados_pessoais}      ${menssage} 	 ignore_case=False

Validar mensagem de alteração de email
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${validar_msg_alteracao}      ${GLOBAL_TIMEOUT}
    Element Should Contain Text 	 ${validar_msg_alteracao}      ${menssage} 	 ignore_case=False


Validar alteração de data de nascimento
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${input_data_nascimento_dados_pessoais}      ${GLOBAL_TIMEOUT}
    Element Should Contain Text 	${input_data_nascimento_dados_pessoais}      ${menssage} 	 ignore_case=False

Validar alteração de celular
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${input_celular_dados_pessoais}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${input_celular_dados_pessoais}      ${menssage}

Validar mensagem de erro no campo nome
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${msg_erro_nome_invalido}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${msg_erro_nome_invalido}      ${menssage}

Validar mensagem de erro data de nascimento
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${msg_erro_data_invalido}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${msg_erro_data_invalido}      ${menssage}

Validar mensagem de erro campo celular
    [Arguments]     ${menssage}
    Wait Until Element Is Visible   ${msg_erro_data_invalido}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${msg_erro_data_invalido}      ${menssage}