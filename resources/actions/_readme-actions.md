# Boas práticas, dicas e lembretes para escrita de Keywords

*Lembre-se:*
    - O padrão das keywords no robotframework pode dispensar o uso de `cucumber` e `arquivos gherkin`, porém, para a boa escrita das keywords devemos seguir a descrição do BDD.
    - O objetivo por trás da escrita do BDD não é somente o desenvolvimento de automação!
    - As features nos ajudam a entender melhor os requisitos e o passo a passo de um comportamento na aplicação.
    - Elas devem ser escritas pensando que outros papéis (PO, SM, DEV, outros QAs e até o pessoal do negócio) podem as utilizar para se aprofundar no entedimento de funcionalidades.
    - O ideal é que elas sejam escritas junto ao time de desenvolvimento, principalmente o PO que deve trazer o viés de entendimento aprofundado dos requisitos.

# Primordial!

-Os nomes das `Keywords` devem ser descritivas e claras.
-Deve explicar o que a `Keyword` faz, não como ela faz sua(s) tarefa(s).
-Níveis de abstração muito diferentes (por exemplo, entrada de texto ou login de administrador no sistema).
-Não há uma orientação clara sobre se uma `Keyword` deve ser totalmente maiúscula ou ter apenas a primeira letra maiúscula.
-O uso de maiúsculas e minúsculas geralmente é usado quando o nome da `Keyword` é curto (por exemplo, Input Text).
-Capitalizar apenas a primeira letra normalmente funciona melhor com `Keywords` que são como frases (por exemplo, o Administrador faz login no sistema). Esses tipos de `Keywords` geralmente são de nível superior.

*** Keywords *** (Bom exemplo)
Login com credenciais válidas 
Login With Valid Credentials

*** Keywords *** (Péssimo exemplo)
Login com usuário válido e senha válida e clicar no botão de login
Input Valid Username And Valid Password And Click Login Button

# *Boas práticas:*

