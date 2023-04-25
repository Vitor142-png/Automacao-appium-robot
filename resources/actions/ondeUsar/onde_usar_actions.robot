* Settings *
Documentation       Passos do onde usar na aplicação Sodexo consumer app

Library     BuiltIn

Resource    ${EXECDIR}/resources/_elements/${APP_OS}/onde_usar_elements.robot

* Keywords *

clicar em onde usar
    Wait Until Element Is Visible     ${btn_onde_usar}   ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_onde_usar}  

Validar tela de onde usar 
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${validar_onde_usar}       ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${validar_onde_usar}       ${message}

clicar em supermercado
    Wait Until Element Is Visible     ${btn_supermercado}
    Click Element                     ${btn_supermercado}

Validar tela de supermercado
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${btn_validar_supermercado}       ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${btn_validar_supermercado}       ${message}

clicar em Restaurante
    Wait Until Element Is Visible     ${btn_restaurante}
    Click Element                     ${btn_restaurante}

Validar tela de Restaurante
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${btn_validar_restaurante}       ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${btn_validar_restaurante}       ${message}

clicar em loja online
    Wait Until Element Is Visible     ${btn_loja_online}
    Click Element                     ${btn_loja_online}

Validar tela de loja online
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${btn_validar_loja_online}      ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${btn_validar_loja_online}      ${message}

clicar em loja fisica
    Wait Until Element Is Visible     ${btn_loja_física}
    Click Element   ${btn_loja_física}

Validar tela de loja fisica
    [Arguments]     ${message}
    Wait Until Element Is Visible   ${btn_validar_loja_física}       ${GLOBAL_TIMEOUT}
    Element Text Should Be          ${btn_validar_loja_física}       ${message}

# Permitir localizacao de onde usar
#     #Click Text      PERMITIR LOCALIZAÇÃO      ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_permitir_localizacao}        ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_Dur_uso_app}                 ${GLOBAL_TIMEOUT}
#     Click Element                              ${btn_permitir_localizacao}

# Permitir localizacao de onde usar dua
#     #Click Text      PERMITIR LOCALIZAÇÃO      ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_Dur_uso_app}                 ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_Dur_uso_app}                 ${GLOBAL_TIMEOUT}
#     Click Element                              ${btn_Dur_uso_app}

# Permitir localizacao de onde usar adv
#     #Click Text      PERMITIR LOCALIZAÇÃO      ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_apenas_desta_vez}                 ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_apenas_desta_vez}                 ${GLOBAL_TIMEOUT}
#     Click Element                              ${btn_apenas_desta_vez}
    
# Permitir localizacao de onde usar np
#     #Click Text      PERMITIR LOCALIZAÇÃO      ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_nao_permitir}                 ${GLOBAL_TIMEOUT}
#     Wait Until Element Is Visible              ${btn_nao_permitir}                 ${GLOBAL_TIMEOUT}
#     Click Element                              ${btn_nao_permitir}

Clicar no botão filtros
    Wait Until Element Is Visible     ${btn_filtros}     ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_filtros}
 
Clicar no botão todos
    Wait Until Element Is Visible     ${btn_todos}
    Click Element                     ${btn_todos}

Clicar no botão ifood
    Wait Until Element Is Visible     ${btn_ifood}
    Click Element                     ${btn_ifood}

Clicar no botão rappi
    Wait Until Element Is Visible     ${btn_rappi}
    Click Element                     ${btn_rappi}

Clicar no menu delivery
    Wait Until Element Is Visible     ${btn_delivery}      ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_delivery}

Clicar no menu distância
    Wait Until Element Is Visible     ${btn_distancia}     ${GLOBAL_TIMEOUT}
    Click Element                     ${btn_distancia}

Clicar no botão aplicar
    Wait Until Element Is Visible     ${btn_aplicar}
    Click Element                     ${btn_aplicar}

