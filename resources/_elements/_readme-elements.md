# Boas práticas para mapeamento de elementos:
  
Existem diferentes formas de mapear os elementos dependendo de como estes foram criados no desenvolvimento,
mas algumas práticas ainda podem ser seguidas para garantir a organização e manutenção do código.
  
1. Nomenclatura: 
    Os elementos devem ser mapeados em caixa baixa indicando seu tipo e nome.
    - Exemplo: *input_cpf*   = Armazena um input com o cpf do usuário.
    - Exemplo: *label_nome*  = Armazena uma label com o nome do usuário.
    - Exemplo: *img_usuario* = Armazena uma imagem de usuário.
    - Exemplo: *btn_logout*  = Armazena um botão para logout da aplicação.

2. Prioridade de seletores:
    Primeiramente você pode utilizar a ferramenta de seleção do appium.
    Se você precisar definir manualmente os seletores, de prioridade nessa ordem:
    1. ID (se único):               id=login_button
    2. Accessibility Id (se único): accessibility_id=logout_button
    3. xpath:                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
    4. Class:                       class=android.widget.LinearLayout
    # Somente em últimos casos utilize css ou name para indicar elementos da tela.
