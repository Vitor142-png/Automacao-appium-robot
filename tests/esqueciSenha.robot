* Settings *
Documentation           Arquivo com cenários da funcionalidade de home cards esqueci senha 

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *
Realizar processo de esqueci senha com CVV do cartão invalido 
    # preciso so de uma massa q eu tenha o CVV o cartão
    [Tags]  1  faill     
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}[CVV]
     Preencher campo nova senha  ${user}[senha_atual]
     Preencher campo repita sua senha   ${user}[senha_atual]
     Clicar em botao salvar nova senha
     validar mensagem de erro de alterar senha     falta pegar a mensagem de erro.

Cenario: validar mensagem de erro ao digitar menos de 3 digitos no campo CVV do cartão
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}[senha_<_4]
     Preencher campo nova senha  ${user}[senha_atual]
     Preencher campo repita sua senha   ${user}[senha_atual]
     Clicar em botao salvar nova senha
     validar mensagem de erro de cvv incompleto     CVV deve conter 3 dígitos.

Cenario: validar mensagem de erro ao digitar uma senha diferente no campo repita sua senha
    # preciso so de uma massa q eu tenha o CVV o cartão
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}[CVV]
     Preencher campo nova senha  ${user}[senha_atual]
     Preencher campo repita sua senha   ${user}[nova_senha]
     Clicar em botao salvar nova senha
     Validar alertar do campo repita sua senha   Senhas não estão iguais.
     


Cenario: validar mensagem de erro ao tentar criar senha menor que 4 dígitos
    # preciso so de uma massa q eu tenha o CVV o cartão
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}[CVV]
     Preencher campo nova senha  ${user}[senha_<_4]
     Preencher campo repita sua senha   ${user}[nova_senha]
     Clicar em botao salvar nova senha
     Validar alertar de erro de senha incompleta     A senha deve conter 4 dígitos. 
     




Cenario: validar mensagem de erro ao tentar alterar senha do cartão com campo codigo CVV em branco
    # preciso so de uma massa q eu tenha o CVV o cartão
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     preencher campo nova senha  ${user}[nova_senha]
     preencher campo repita sua senha    ${user}[senha_atual]
     Clicar em botao salvar nova senha
     Validar mensagem de erro de CVV ausente        Insira o CVV do seu cartão.

Cenario: validar mensagem de erro ao tentar alterar senha do cartão com campo nova senha em branco
    # preciso so de uma massa q eu tenha o CVV o cartão
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}[CVV]
     preencher campo repita sua senha    ${user}[senha_atual]
     Clicar em botao salvar nova senha
     Validar alertar de erro no campo nova senha         Insira a sua nova senha.
   
Cenario: validar mensagem de erro ao tentar alterar senha do cartão com campo repita sua senha em branco
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}[CVV]
     preencher campo nova senha  ${user}[nova_senha]
     Clicar em botao salvar nova senha
     Validar alerta de erro no campo repita sua senha    Repita a nova senha.
Cenario: validar mensagem de erro ao tentar alterar senha com todos os campos em brancos
    [Tags]  esqueciSenha      all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     clicar em esqueci senha
     Clicar em botao salvar nova senha
     Validar mensagem de erro de CVV ausente        Insira o CVV do seu cartão.
     Validar alertar de erro no campo nova senha    Insira a sua nova senha.
     Validar alerta de erro no campo repita sua senha   Repita a nova senha.
Realizar processo de esqueci senha com CVV do cartão valido
    # preciso so de uma massa q eu tenha o CVV o cartão
    [Tags]  esqueciSenha1 fail  Fail
    [Documentation] massa 350.877.228-49 CVV 938 senha do cartao 3981
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar em esqueci senha
     Preencher campo CVV do cartao  ${user}
     Preencher campo nova sena  ${user} 
     Preencher campo repita sua senha   ${user}
     Clicar em botao salvar nova senha
     validar alteracao de senha com sucesso            

