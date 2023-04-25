* Settings *
Documentation       Passos do home cards na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/transferencia_elements.robot


* Keywords *
Validar botao "Transferir Saldo"
    [Arguments]     ${message}
    Swipe    643    1978    627    213    10000
    Wait Until Element Is Visible   ${btnTransferir}         ${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible   ${btnTransferir}         ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${btnTransferir}         ${message}

clicar em botao tranferir saldo
    #Swipe    643    1978    627    213    10000
    Wait Until Element Is Visible         ${btnTransferirsaldo}         ${GLOBAL_TIMEOUT}
    Click Element                         ${btnTransferirsaldo}
    


informar valor que deseja tranferir do Ref
    [Arguments]      ${user}
    Wait Until Element Is Visible    ${btn_alterar_valor_trans_ref} 
    Click Element                    ${btn_alterar_valor_trans_ref} 
    Input text                       ${btn_alterar_valor_trans_ref}    ${user}

informar valor que deseja tranferir do Ali
    [Arguments]      ${user}
    Wait Until Element Is Visible    ${btn_alterar_valor_trans_ali}
    Click Element                    ${btn_alterar_valor_trans_ali}
    Input text                       ${btn_alterar_valor_trans_ali}    ${user}
clicar em salvar
    Wait Until Element Is Visible     ${btn_salvar}         10
    Click Element                     ${btn_salvar}   

validar mensagem de tranferencia feita com sucesso
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${pop_up_tranferir_saldo}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${pop_up_tranferir_saldo}       ${message}
    Wait Until Element Is Visible     ${btn_ok}         10
    Click Element                     ${btn_ok}
    Sleep      5
    Wait Until Element Is Visible        ${btn_icone_olho}      ${GLOBAL_TIMEOUT}           
    Click Element                        ${btn_icone_olho}
    Sleep      2
    Click Element                        ${btn_icone_olho}


