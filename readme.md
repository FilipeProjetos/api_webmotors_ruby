# Automação de testes WebMotors


![NPM](https://img.shields.io/npm/l/react)

# Sobre o projeto

QA Sênior – Desafio técnico

Automação de testes da WebMotors é a automação de testes back-end API, considerar a documentação: https://desafioonline.webmotors.com.br/swagger/ui/index#!/OnlineChallenge. A aplicação consiste em automatizar testes utliziando cenários fazer as validações de retorno e de contrato do response da api via código em Ruby. Para essa aplicação foi utilizado Cenários em Ruby + HTTParty + Rspec.

## Modelo conceitual

# Tecnologias utilizadas

## Automação Back-end Api
- Ruby
- HTTParty
- Rspec
- Html Report

#
## Arquitetura do projeto
### Configurando sua máquina


Necessário instalar:

Ruby for Windows: linguagem de programação utilizada nos testes.
Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows.
Configurando o ambiente de automação de testes Api. Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:

Windows
1. Instalando o Console do Cmder
Baixe em: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip .
Descompactar na pasta C:\Cmder.
Selecione o cmder.exe e arrastar até sua barra de ferramentas do Windows para criar um atalho.
Executar o cmder.exe.
2. Instalando o Ruby para Windows de acordo com a versão do seu sistema operacional e arquitetura x86 (32bits) ou x64 (64bits)
Baixe em: http://rubyinstaller.org/downloads/.
Executar o arquivo baixado e seguir as instruções clicando em ‘next’.
Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada.
3. Instalando Devkit
Baixe em (x86): https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe.
Baixe em (x64): http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe.
Acesse o diretório C:\Ruby23-x64.
Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta.
Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
No Console do Cmder, digite os comandos:

```bash
cd/
cd C:\Ruby23-x64\devkit
ruby dk.rb init
ruby dk.rb install
```

4. Alterando os sources do rubygems
O Rubygems precisa de uma atualização de certificado de sergurança para permitir utilizar com https, e para não precisar atualizar isso, passamos a utilizar então o repositório de gems em http, fazendo o seguinte:

No Console do Cmder, digite o comando:
```bash
gem sources -a http://rubygems.org/

gem sources -r https://rubygems.org/
```
5. Instalando o bundler
No Console do Cmder, digite o comando:
```bash
gem install bundler

bundle install
```
6. Instalando o chromedriver, IEdriver e Geckodriver
Baixe o chromedriver em: https://sites.google.com/a/chromium.org/chromedriver/downloads .

Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin. Faça o mesmo para o IEdriver e o Geckodriver.

7. Configurando WebDriver na maquina

na raiz(c:), criar uma pasta com o nome 'tools', dentro da pasta tools criar uma nova pasta com o nome WebDriver,
dentro da pasta descompactar o arquivo Webdriver, baixado de acordo com a versão do navegador atual da máquina
rodará os testes(versão pode ser obtida com: 'chrome://settings/help')

em variáveis de ambiente criar uma nova variável com:

Nome da variábel : WebDrivers

Valor da variável: C:\tools\webdrivers

e depois deve se Editar o path, inserindo o WebDriver:
%WebDrivers%

Instalação do JDK 8 Acessar a pagina abaixo para baixar e instlar o JDK 8 https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html#license-lightbox
Agora o ambiente está configurado, podemos rodar os testes.
Como Executar os testes automatizados
Para executar o testes automatizados usaremos alguns comandos a partir da pasta raiz do nosso projeto.

Para execução de todos os cenários implementados  utilizamos o seguinte código:
```bash
rspec
```
Este código executará o teste completo.

o resultado será:

```bash
GET / makes
  Busca de marcas com sucesso
response message: OK
    valida status code 200
    valida contrato

GET / Model
  Busca de marcas com sucesso
response message: OK
    valida status code 200
    valida contrato

GET / Vehicles
  Busca de Veiculos com sucesso
response message: OK
    valida status code 200
    valida contrato

GET / Model
  Busca de marcas com sucesso
    valida contrato

Finished in 2.59 seconds (files took 0.4849 seconds to load)
8 examples, 0 failures

```

Para acessar o Report em HTML é só abrir o arquivo report.html seguindo o caminho abaixo: 
C:\api_webmotors_ruby\logs\report.html.

Autor
"Filipe Cardoso Gabriel"