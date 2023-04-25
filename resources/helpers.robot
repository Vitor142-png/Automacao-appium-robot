* Settings *
Documentation       Keyword helpers da automação

* Keywords *
Fazer login com
    [Arguments]     ${user}
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois localização
    Decidir depois mensagens
    Recusar o cadastro de dispositivo
    Usuario deve estar logado  ${user}
