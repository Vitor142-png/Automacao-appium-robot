echo "rodando..."
robot -v APP_OS:$1 -v ENVIRONMENT:$2 -v CI:$3  -d ./logs -i meuperfil tests/
