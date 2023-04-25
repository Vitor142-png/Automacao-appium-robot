* Settings *
Documentation           Arquivo com cenários da funcionalidade de fidelidade

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases * 

validar botão meus pontos fidelidade
    [Tags]  fidelidade1   
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em botão fidelidade
    Validar tela de fidelidade  FIDELIDADE

Validar menu estabelecimentos dentro de fidelidade
    [Tags]  fidelidade1   
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em botão fidelidade
    validar menu estabelecimentos   ESTABELECIMENTOS

Validar menu extrato dentro de fidelidade
    [Tags]  fidelidade1   
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em botão fidelidade
    clicar no menu extrato
    validar menu extrato    EXTRATO

Validar menu resgate dentro de fidelidade
        [Tags]  fidelidade10   
        ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em botão fidelidade
    clicar no menu resgate
    validar menu resgate


