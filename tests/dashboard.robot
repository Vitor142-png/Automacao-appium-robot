* Settings *
Documentation           Arquivo com cenários da funcionalidades da dashboard

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App

* Test Cases *
Validar saldo de usario
    [Tags]      teste
    ${user}     Factory User    usuario_valido
    # Dado
    Fazer login com  ${user}
    # Quando
    Mostrar o saldo em cartão
    # Então
    Valor do saldo deve ser  0,00