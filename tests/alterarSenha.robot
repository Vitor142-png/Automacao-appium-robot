* Settings *
Documentation           Arquivo com cenários da funcionalidade de alterar senha do cartão

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *



Cenario validar mensagem de erro ao digitar uma senha diferente no campo repita sua senha
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo senha atual  ${user}[senha_atual]
    preencher campo nova senha  ${user}[senha_com_letra]
    preencher campo repita sua senha    ${user}[senha_atual]
    Clicar em botao salvar nova senha
    Validar alertar do campo repita sua senha   Senhas não estão iguais.




Cenario validar mensagem de erro ao tentar alterar senha com letras
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo senha atual  ${user}[senha_atual]
    preencher campo nova senha  ${user}[senha_com_letra]
    preencher campo repita sua senha    ${user}[senha_com_letra]
    Clicar em botao salvar nova senha
    validar mensagem de erro de alterar senha   Houve um problema. Tente novamente.
    

Cenario validar mensagem de erro ao tentar criar senha menor que 4 dígitos
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo senha atual  ${user}[senha_atual]
    preencher campo nova senha  ${user}[senha_<_4]
    preencher campo repita sua senha    ${user}[senha_atual]
    Clicar em botao salvar nova senha
    Validar alertar de erro de senha incompleta     A senha deve conter 4 dígitos. 

Cenario validar mensagem de erro ao tentar alterar senha do cartão com campo senha atual em branco
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
   # Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo nova senha  ${user}[nova_senha]
    preencher campo repita sua senha    ${user}[senha_atual]
    Clicar em botao salvar nova senha
    Validar alertar de erro no campo senha atual        Insira a sua senha atual.

Cenario validar mensagem de erro ao tentar alterar senha do cartão com campo nova senha em branco
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo senha atual  ${user}[senha_atual]
    preencher campo repita sua senha    ${user}[senha_atual]
    Clicar em botao salvar nova senha
    Validar alertar de erro no campo nova senha         Insira a sua nova senha.

Cenario validar mensagem de erro ao tentar alterar senha do cartão com campo repita sua senha em branco
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo senha atual  ${user}[senha_atual]
    preencher campo nova senha  ${user}[nova_senha]
    #preencher campo repita sua senha    ${user}[senha_atual]
    Clicar em botao salvar nova senha
    Validar alerta de erro no campo repita sua senha    Repita a nova senha.
Cenario negativo: validar mensagem de erro ao tentar alterar senha com dados em brancos 
    [Tags]  alterarSenha    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    Clicar em botao salvar nova senha
    Validar alertar de erro no campo senha atual        Insira a sua senha atual.
    Validar alertar de erro no campo nova senha         Insira a sua nova senha.
    Validar alerta de erro no campo repita sua senha    Repita a nova senha.

Cenario: Alterar senha com dados validos
    [Tags]  alterarSenha2
    #[Documentation] ambiente fora n consegui alterar a senha  
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    #informar sms    ${user}
    preencher campo senha atual  ${user}[senha_atual]
    preencher campo nova senha  ${user}[nova_senha]
    preencher campo repita sua senha    ${user}[nova_senha]
    Clicar em botao salvar nova senha 
    validar alteracao de senha com sucesso       Senha alterada com sucesso



