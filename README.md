# Configurar ambiente para automação Mobile Android

Instalação e configuração, para executar testes de Mobile Android, utilizando calabash-android com Cucumber.

## Abrir o terminal e executar os seguintes passos:

* Instalar homebrew

		$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

* Instalar rvm

		$ curl -sSL https://get.rvm.io | bash

* Dar permissão nas Gems

		$ sudo chown -R `whoami` /Library/Ruby/Gems

* Instalar bundle

		$ gem install bundler

* Instalar Android SDK

		$ brew install android-sdk
		$ brew install android-platform-tools

* Instalar Java

		- https://www.java.com/pt_BR/download/faq/java_mac.xml

* Instalar JDK

		- http://www.oracle.com/technetwork/pt/java/javase/downloads

### Instalar Android Studio

* Baixar ultima versão estável

		- http://tools.android.com/download/studio/stable

### Instalar dependencias do Android

* No terminal executar os seguintes comandos:

		$ cd /Users/{usuario}/Library/Android/sdk/tools
		$ open android

* Na tela de SDK manager selecionar todos os pacotes marcados (azul)
    
    ![alt tag](https://puu.sh/sRKbk/c28a19e0e4.png)
    ![alt tag](https://puu.sh/sRKf2/e896fe7418.png)
    ![alt tag](https://puu.sh/sRKg8/a366a26484.png)
    
		
### Configurar variável de ambiente

* No terminal executar os seguintes comandos:
    
        $ vim .bash_profile
        No vim teclar (I)
        Colar essas duas variáveis
        $ export ANDROID_HOME=/Users/{usuario}/Library/Android/sdk/
        $ export PATH=$PATH:$ANDROID_HOME/platform-tools
        Teclar (ZZ) para sair e salvar
        $ source ~/.bash_profile
        
--------------------------------------------------------------------------------

# Criar projeto
 
* Criar a pasta do projeto
 
        - Acessar pelo terminal o diretório que deseja criar a pasta do projeto: $ cd ~/<diretório>
        $ mkdir <Nome do seu projeto>
        - Acessar a pasta criada: $ cd ~/<Nome da pasta>

* Criar etrutura do projeto

        $ calabash-android gen <Nome_projeto>
--------------------------------------------------------------------------------

# Configurar color no shell

* Executar o curl no terminal

	    - https://github.com/robbyrussell/oh-my-zsh
--------------------------------------------------------------------------------

# Executar os testes

* Abrir o android studio e criar um emulador para rodar os testes

 		- Acessar Android Studio > AVD Manager > Create Virtual Device

* Abrir a pasta do projeto e rodar os seguintes comandos:

	 	$ cd ~/<diretório_onde_esta_o_projeto>

* Assinar o aplicativo no device

		$ calabash-android resign <PATH.apk>

* Executar os testes

		$ calabash-android run <PATH.apk>
