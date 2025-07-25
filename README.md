# 🟩 Servidor Minecraft

Este é um servidor Minecraft com sincronização automática via GitHub.
Qualquer jogador autorizado pode iniciar o servidor em sua própria máquina e garantir que o progresso esteja sempre atualizado para todos.

---

## 🚀 Como funciona

- O servidor é sincronizado automaticamente via Git.
- Este repositório contém os scripts e instruções para iniciar o servidor e sincronizar entre vários computadores.
- O servidor pode ser iniciado por qualquer jogador com acesso.
- A conexão entre os jogadores é feita via **Radmin VPN**.
- Tudo é feito automaticamente ao usar os scripts incluídos.

---

## 🧱 Requisitos

- Java 21+ instalado
- Git instalado
- server.jar (coloque a versão correspondente na raiz — **não está incluído no repositório**)
- Acesso ao grupo do Radmin VPN

---

## 📁 Estrutura do repositório

```
├── backups/
├── scripts/
│   ├── backup_nuvem.bat.bat          # Faz backup para o GitHub
│   ├── matar_java.bat                # Encerra processos do servidor
│   └── restaurar_nuvem.bat.bat       # Restaura arquivos do GitHub
├── iniciar.bat                       # Inicia o servidor normalmente (baixa arquivos atualizados)
├── server.jar                        # Cria toda configuração inical do servidor
├── iniciar_primeira_vez.bat          # Gatilho inicial (cria estrutura básica)
```

---\n
## ☕ Como adicionar o server.jar

1. Acesse o site oficial da Mojang para baixar a versão desejada do servidor Minecraft:
    [server.jar](https://www.minecraft.net/en-us/download/server)
2. Renomeie o arquivo para `server.jar`.
3. Coloque o arquivo **na raiz da pasta do servidor**, junto com os arquivos `.bat`.

---

## 🌐 Como baixar e configurar o Radmin VPN

1. Baixe o Radmin VPN em:
   [Radmin](https://www.radmin-vpn.com/)

2. Instale normalmente.

3. Crie ou entre em um grupo de rede:
   - Clique em “Rede” → “Entrar em uma rede existente” ou “Criar rede nova”.
   - Compartilhe o nome e senha com os outros jogadores.

4. O servidor será acessado pelo **IP virtual da rede Radmin**.

---

## 🔸 Instalando e Configurando o Git

1. Baixando e Instalando o Git
   Acesse o site oficial do Git:
   [GIT](http://git-scm.com/downloads)

   Baixe a versão para seu sistema operacional (Windows, Mac ou Linux).

   Instale normalmente com as opções padrão.

3. ⚠️ Primeira Vez Usando Git? Vai pedir Nome e Email!
   Quando você rodar o servidor pela primeira vez, pode aparecer o seguinte aviso no terminal:

```
*** Please tell me who you are.

Run

  git config --global user.email "voce@email.com"
  git config --global user.name "Seu Nome"

to set your account's default identity.
```
Esse aviso significa que o Git ainda não sabe quem está fazendo o commit (backup).

Para resolver, basta abrir o terminal (ou Git Bash) e digitar:

```bash
git config --global user.email "seuemail@exemplo.com"
git config --global user.name "Seu Nome"
```

---

## 🔗 Como vincular sua pasta local ao repositório GitHub

> ⚠️ *Se você está apenas usando o servidor normalmente, **NÃO precisa executar nenhum comando Git manualmente*** — o `iniciar.bat` **já cuida de tudo automaticamente**.
> 
> Essas instruções são apenas caso precise configurar o servidor pela **primeira vez** ou corrigir algum erro de sincronização.

---

### 📁 1. Escolha o local da pasta do servidor

Exemplo:

```plaintext
C:\Users\SeuNome\Desktop\ServidorMinecraft
```

---

### 🧠 2. Clonar o repositório GitHub (primeira vez)

Abra o **Prompt de Comando** e digite:

```bash
cd "C:\Users\SeuNome\Desktop"
git clone https://github.com/SeuUsuario/ServidorMinecraft.git
```

---

### 🛠️ 3. (Opcional) Se já tiver uma pasta com arquivos antigos

Se você já tem a pasta do servidor e quer **vincular ao GitHub**, faça:

```bash
cd "C:\Users\SeuNome\Desktop\ServidorMinecraft"
git init
git remote add origin https://github.com/SeuUsuario/ServidorMinecraft.git
git pull origin main --allow-unrelated-histories
```

---

### ✅ Pronto!

Agora:

- Sempre inicie o servidor com o `iniciar.bat`
- Ele puxará os arquivos atualizados automaticamente
- E ao fechar, o backup será feito automaticamente via `backup_nuvem.bat.bat`

---

## 📦 Scripts principais (resumo)

- `iniciar.bat`: restaura arquivos do GitHub e inicia o servidor.
- `scripts/backup_nuvem.bat`: envia alterações para o GitHub ao encerrar.
- `scripts/restaurar_nuvem.bat`: força a restauração dos arquivos do GitHub.
- `scripts/matar_java.bat`: encerra o processo do servidor manualmente.

---

## 🌐 Como Logar no Servidor Minecraft

Para se conectar ao servidor Minecraft, é necessário utilizar o **IP da pessoa que está hospedando o servidor no momento**, via **Radmin VPN**.

### Como descobrir o IP correto:

1. Abra o Radmin VPN.
2. Verifique na lista da rede quem está com o servidor online.
3. Copie o **IP do jogador que está com o servidor rodando**.
4. No Minecraft, vá em "Multijogador" > "Adicionar servidor".
5. No campo "Endereço do servidor", cole o IP copiado.

🔁 **Importante:** O IP muda de acordo com quem está hospedando.

Por isso, recomendamos que **apenas 2 ou 3 pessoas sejam responsáveis por iniciar e encerrar o servidor**. Assim, evita-se a necessidade de saber vários IPs diferentes.

### Exemplo:

Se o jogador **Pedro** iniciou o servidor, os outros jogadores devem usar o IP do Pedro no Radmin VPN para entrar. Se o **João** iniciar o servidor no dia seguinte, o IP a ser usado será o do João.

❗ Certifique-se de que apenas **uma pessoa inicie o servidor por vez**, para evitar conflitos.

