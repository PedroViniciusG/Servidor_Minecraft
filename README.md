# 🟩 Servidor Minecraft Colaborativo

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
- `server.jar` (coloque a versão correspondente na raiz — **não está incluído no repositório**)  
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
├── iniciar_primeira_vez.bat          # Gatilho inicial (cria estrutura básica)
```

---

## ☕ Como adicionar o `server.jar`

1. Acesse o site oficial da Mojang para baixar a versão desejada do servidor Minecraft:
   - [https://www.minecraft.net/en-us/download/server](https://www.minecraft.net/en-us/download/server)
2. Renomeie o arquivo para `server.jar`.
3. Coloque o arquivo **na raiz da pasta do servidor**, junto com os arquivos `.bat`.

---

## 🌐 Como baixar e configurar o Radmin VPN

1. Baixe o Radmin VPN em:  
   [https://www.radmin-vpn.com/](https://www.radmin-vpn.com/)

2. Instale normalmente.

3. Crie ou entre em um grupo de rede:
   - Clique em “Rede” → “Entrar em uma rede existente” ou “Criar rede nova”.
   - Compartilhe o nome e senha com os outros jogadores.

4. O servidor será acessado pelo **IP virtual da rede Radmin**.

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
- E ao fechar, o backup será feito automaticamente via `backup_nuvem.bat`

---

## 📦 Scripts principais (resumo)

- `iniciar.bat`: restaura arquivos do GitHub e inicia o servidor.
- `scripts/backup_nuvem.bat.bat`: envia alterações para o GitHub ao encerrar.
- `scripts/restaurar_nuvem.bat.bat`: força a restauração dos arquivos do GitHub.
- `scripts/matar_java.bat`: encerra o processo do servidor manualmente.
