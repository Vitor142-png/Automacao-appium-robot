from faker import Faker
fake = Faker(locale='pt_BR')

def factory_user(target):

    data = {
        'usuario_invalido': {
            "nome": "QA tester",
            "cpf": "123.456.789-00",
            "password": "Sodexo123"
        },

        'usuario_valido': {
            "nome": "Vitor",
            "cpf": "11520383207",
            "password": "sodexo10@",
            "final_cartao_refeicao": "7996",
            "token": "606060",
            "saldo_cartao": '145,55' 
        },

        'bloquear': {
            "nome": "Flex",
            "cpf": "69561021102",
            "password": "sodexo10@",
            "final_cartao_refeicao": "7996",
            "token": "606060",
            "tranferirRef": "150045",
            "tranferirRefMax": "20000000",
            "tranferirAliMax": "2500000",
            "tranferirRefMin": "000000",
            "tranferirAliMin": "000000",
            "tranferirAli": "1434",
            "senha_atual": "9754",
            "nova_senha": "1409",
            "CVV": "374",
            "saldo_cartao": '1500,00' 
        },

        'usuario_faker': {
            "nome": fake.first_name(),
            "cpf": fake.cpf(),
            "password": fake.password()
        },

        'cadastrar': {
            "nome": "Ciclano ciclado",
            "cpf": "41733866809",
            "email": "sdx10@grr.la",
            "celular": "11974216906",
            "nascimento": '26051999',
            "password": "sodexo10@"

        },
        
        'usuario_bloqueio': {
            
            "cpf": "104069369-51",
            "email": "sdx10@.com",
            "password": "sodexo100@"

        },

         'cadastrar3': {
            "nome": "Alvaro",
            "cpf": "91238486347",
            "email": "vitormeneses@99gmail.com",
            "celular": "11997668192",
            "nascimento": '26051999',
            "password": "sodexo10@"

        },

        

         'alterarSenha': {
            "nome": "Alvaro",
            "cpf": "82703309228",
            "alterar_senha": "1308",
            "nova_senha": "1409",
            "CVV": "374",
            "token": "606060",
            "password": "sodexo@10"

        },

        'AlterarSenha1': {
            "nome": "Alvaro",
            "cpf": "847896640-40",
            "celular": "11997668192",
            "nascimento": '26051999',
            "password": "sodexo10@",
            "token": "606060",
            "CVV": "374",
            "nova_senha": "1411",
            "senha_<_4": "1",
            "senha_segura":"sodexo10@",
            "confirme_senha_segura":"sodexo10@",
            "senha_7_caract":"sodex@1",
            "senha_sem_numero":"sodexoClub@",
            "senha_sem_letra":"98752015@",
            "senha_sem_caracter":"98752015a",
            "senha_com_letra":"sode",
            "senha_atual": "1410"

        }

    }

    return data[target]