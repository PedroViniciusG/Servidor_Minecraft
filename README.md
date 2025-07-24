# Servidor_Minecraft

🟩 Servidor Minecraft Colaborativo

Este é um servidor Minecraft com sincronização automática via GitHub. Qualquer jogador autorizado pode iniciar o servidor em sua própria máquina e garantir que o progresso esteja sempre atualizado para todos.

🚀 Como funciona

O servidor é sincronizado via Git.
Nesse repositório estão os scripts e explicações de como iniciar o servidor e fazê-lo funcionar entre vários computadores.
O servidor pode ser iniciado por qualquer jogador com acesso.
A conexão entre os jogadores é feita via Radmin VPN.

🧱 Requisitos

Java 21+ instalado
Git instalado
server.jar (coloque a versão correspondente na raiz — não está incluído no repositório)
Acesso ao grupo do Radmin VPN

📥 Como configurar

🔸 1. Baixando o server.jar
Acesse o site oficial da Mojang e baixe o arquivo server.jar da versão que deseja usar.

Renomeie o arquivo para server.jar (caso o nome venha diferente).

Coloque o arquivo na raiz da pasta do servidor (junto com os arquivos iniciar.bat, etc.).

⚠️ O server.jar não será versionado pelo GitHub, pois é um arquivo externo. Cada jogador deve colocá-lo manualmente.

🔸 2. Baixando e configurando o Radmin VPN

Acesse o site oficial do Radmin VPN.

Baixe e instale o programa normalmente.

Após instalar:

Abra o Radmin VPN.

Clique em "Rede" > "Entrar em uma rede existente".

Insira o nome e a senha da rede compartilhada com os jogadores do servidor.

Pronto! Você estará conectado à mesma rede virtual dos outros jogadores.

🔐 Apenas jogadores com acesso à rede Radmin poderão jogar.

🔸 3. Criando uma conta e repositório privado no GitHub

Para usar o versionamento e sincronização dos arquivos do servidor, você precisa:

Ter uma conta gratuita no GitHub.

Criar um repositório privado para armazenar os arquivos do servidor Minecraft (scripts, mundos, configurações, etc.).

Configurar este repositório para que só os jogadores autorizados tenham acesso.

Esse repositório será o local centralizado onde todos os arquivos atualizados do servidor serão sincronizados e versionados.

Importante: O repositório deve ser privado para garantir que apenas os jogadores autorizados possam acessar os arquivos do servidor.

🔸 4. Instalando e configurando o Git

4.1 Baixando e instalando o Git
Acesse o site oficial do Git: https://git-scm.com/downloads

Baixe a versão para seu sistema operacional (Windows, Mac ou Linux) e instale seguindo as instruções padrão.

4.2 Configurando o Git pela primeira vez
Abra o Prompt de Comando (Windows), Terminal (Mac/Linux) ou o próprio Git Bash (recomendado) e configure seu nome e e-mail (apenas na primeira vez):


git config --global user.name "Seu Nome"
git config --global user.email "seu-email@example.com"

4.3 Configurando autenticação com GitHub
Para evitar pedir login/senha sempre, configure autenticação por SSH ou use o Git Credential Manager (no Windows) para HTTPS.

Configurar SSH (recomendado)
Gere uma chave SSH (se ainda não tiver):

ssh-keygen -t ed25519 -C "seu-email@example.com"
Copie o conteúdo da chave pública (~/.ssh/id_ed25519.pub) e adicione no GitHub em:
Configurações > SSH and GPG keys > New SSH key

Teste a conexão:

ssh -T git@github.com

Clone o repositório usando o link SSH:

git clone git@github.com:SEU_USUARIO/SEU_REPOSITORIO.git

4.4 Clonando o repositório do servidor

No terminal, escolha a pasta onde deseja colocar o servidor e execute:


git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git

ou, se configurou SSH:

git clone git@github.com:SEU_USUARIO/SEU_REPOSITORIO.git
Substitua SEU_USUARIO e SEU_REPOSITORIO pelos seus dados no GitHub.


