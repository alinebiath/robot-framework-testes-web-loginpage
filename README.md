# Testes automatizados Data-Driven com Robot Framework
- Testes aplicados no site de exemplo: https://the-internet.herokuapp.com/login
- Foi utilizado o estilo data-driven para validar o mesmo cenário, porém com diferentes dados de entrada/saída

## 1. Estrutura de arquivos e diretórios
Os testes estão estruturados nos seguintes diretórios:
- **requirements.txt**: arquivo que contém as chamadas para instalação das libraries do robot que são necessárias para executar os testes.</br>
- **test-suites**: diretório que contém arquivos .robot com as suítes de testes (cenários ou casos de testes).
- **keywords**: diretório que contém arquivos <i>.robot</i> com a implementação das palavras-chaves (keywords).

## 2. Pré condições para os testes
- Clonar esse projeto
- Python 2.7.x ou superior
- Baixar os webDrivers dos navegadores Firefox ou Chrome
- Usar um editor ASCII de sua preferência (VSCode, Atom, RIDE, etc)</br>

## 3. Preparando ambiente

### Instalando libraries Python necessárias

Instale todas a libraries Python necessárias, digitando no terminal o comando:

```sh
Linux / Mac
$ pip install -r requirements.txt --user
```

### Baixando webDrivers para os navegadores

> Baixe o driver do Firefox em: https://github.com/mozilla/geckodriver/releases 

> Baixe o driver do Chrome em: http://chromedriver.chromium.org/downloads 

Deve ser baixado o driver mais atualizado, de acordo com a versão do navegador. </br>
Após baixar os arquivos no diretório desejado, é preciso configurar o caminho deste diretório na variável $PATH do sistema. Essa configuração varia de acordo com o sistema operacional.

## 4.  Executando os testes
> Os comandos abaixo devem ser executados no terminal, no diretório raiz do projeto.

```sh
$ python -m robot -d output/all test-suites/
```
