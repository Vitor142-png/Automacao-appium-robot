* Settings *
Documentation           Arquivo com os cenários do ONDE USAR

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases * 

Validar função onde usar
   [Tags]  ondeusargpsdesligado    ondeusar   all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Decidir depois localização
   clicar em onde usar
   Validar tela de onde usar  Onde Usar

# Validar função onde usar - GPS Lig (Durante o Uso do APP)
#    [Tags]  ondeusargpsligado    ondeusar    all
#    ${user}     Factory User    usuario_valido
#    Preencher campos de login  ${user}
#    Clicar no botao login
#    Aceitar os cookies
#    Decidir depois mensagens
#    Decidir depois localização
#    clicar em onde usar
#    Permitir localizacao de onde usar dua
#    Validar tela de onde usar  Onde Usar

# Validar função onde usar - GPS Lig (Apenas desta vez)
#    [Tags]  ondeusargpsligado    ondeusar    all
#    ${user}     Factory User    usuario_valido
#    Preencher campos de login  ${user}
#    Clicar no botao login
#    Aceitar os cookies
#    Decidir depois mensagens
#    Decidir depois localização
#    clicar em onde usar
#    Permitir localizacao de onde usar adv
#    Validar tela de onde usar  Onde Usar

# Validar função onde usar - GPS Lig (Não permitir)
#    [Tags]  ondeusargpsligado    ondeusar    all
#    ${user}     Factory User    usuario_valido
#    Preencher campos de login  ${user}
#    Clicar no botao login
#    Aceitar os cookies
#    Decidir depois mensagens
#    Decidir depois localização
#    clicar em onde usar
#    Permitir localizacao de onde usar np
#    Validar tela de onde usar  Onde Usar

Validar função onde usar - filtro todos
   [Tags]  ondeusartodos  ondeusar    all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Permitir Localização
   clicar em onde usar
   Clicar no botão filtros
   Clicar no botão todos
   Clicar no botão aplicar
   Validar tela de onde usar  Onde Usar

Validar função onde usar - filtro delivery
   [Tags]  ondeusardelivery  ondeusar    all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Permitir Localização
   clicar em onde usar
   Clicar no botão filtros
   Clicar no menu delivery
   Clicar no botão aplicar
   Validar tela de onde usar  Onde Usar

Validar função onde usar - filtro rappi
   [Tags]  ondeusarrappi    ondeusar     all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Permitir Localização
   clicar em onde usar
   Clicar no botão filtros
   Clicar no botão rappi
   Clicar no botão aplicar
   Validar tela de onde usar  Onde Usar

Validar função onde usar - filtro ifood
   [Tags]  ondeusarifood    ondeusar    all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Permitir Localização
   clicar em onde usar
   Clicar no botão filtros
   Clicar no botão ifood
   Clicar no botão aplicar
   Validar tela de onde usar  Onde Usar

Validar função onde usar - Filtro Superior Delivery
   [Tags]  ondeusarfiltrosupdelivery    ondeusar    all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Permitir Localização
   clicar em onde usar
   Clicar no menu delivery
   Clicar no botão aplicar
   Validar tela de onde usar  Onde Usar

Validar função onde usar - Filtro Superior Distancia
   [Tags]  ondeusarfiltrosupdistancia    ondeusar    all
   ${user}     Factory User    usuario_valido
   Preencher campos de login  ${user}
   Clicar no botao login
   Aceitar os cookies
   Decidir depois mensagens
   #Permitir Localização
   clicar em onde usar
   Clicar no menu distância
   Clicar no botão aplicar
   Validar tela de onde usar  Onde Usar 