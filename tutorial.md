# 📘 Tutorial Completo — Servidor Minecraft

Este tutorial foi criado para ensinar passo a passo como configurar, iniciar e jogar em um servidor Minecraft colaborativo com sincronização automática via GitHub.

---

## ✅ O que você vai aprender

- Instalar o Java e o Git
- Baixar o Radmin VPN e entrar em uma rede
- Baixar os arquivos do servidor via GitHub
- Adicionar o `server.jar`
- Rodar o servidor pela primeira vez
- Jogar com amigos usando o IP do Radmin
- Fazer backups automáticos com Git

---

## 🧱 Requisitos obrigatórios

- Java 21 ou superior
- Git instalado
- Conta no GitHub com repositório privado criado
- Radmin VPN instalado
- Arquivo `server.jar` correspondente à versão do seu servidor

---

## 🧩 Etapa 1 — Instalar Java

1. Acesse: [https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html](https://www.oracle.com/java/technologies/javase/jdk21-archive-downloads.html)
2. Baixe e instale a versão do JDK para o seu sistema operacional (Windows).
3. Após instalar, abra o CMD e digite `java -version` para verificar se está funcionando.

---

## 🧩 Etapa 2 — Instalar Git

1. Acesse: [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Baixe e instale o Git com as opções padrão.
3. Após instalar, abra o CMD e digite `git --version` para verificar.

---

## 🧩 Etapa 3 — Instalar Radmin VPN

1. Acesse: [https://www.radmin-vpn.com/](https://www.radmin-vpn.com/)
2. Instale normalmente.
3. Clique em **Rede** > "Criar nova rede" ou "Entrar em uma rede existente".
4. Compartilhe nome/senha da rede com os amigos.

---

## 🧩 Etapa 4 — Clonar os arquivos do GitHub

1. Acesse seu GitHub e crie um repositório privado chamado `ServidorMinecraft`.
2. Copie o link HTTPS do repositório (ex: `https://github.com/SeuUsuario/ServidorMinecraft.git`).
3. No seu computador, abra o CMD ou o Git Bash (recomendado) e digite:

```bash
cd C:\Users\SeuNome\Desktop
git clone https://github.com/SeuUsuario/ServidorMinecraft.git
```

4. Coloque os scripts e arquivos do servidor dentro dessa pasta.

---

## 🧩 Etapa 5 — Adicionar o server.jar

1. Baixe o `server.jar` aqui: [https://www.minecraft.net/en-us/download/server](https://www.minecraft.net/en-us/download/server)
2. Renomeie para `server.jar`.
3. Coloque na raiz da pasta do servidor (onde está o `iniciar.bat`).

---

## 🧩 Etapa 6 — Rodar pela primeira vez

1. Clique duas vezes em `iniciar_primeira_vez.bat`.
2. Isso criará a estrutura inicial e preparará o ambiente.
3. Pode aparecer uma mensagem pedindo nome/email do Git — digite:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
```

---

## 🧩 Etapa 7 — Iniciar normalmente

1. Sempre que for jogar, use o `iniciar.bat`.
2. Ele puxa os arquivos atualizados do GitHub.
3. Ao fechar o servidor, ele envia automaticamente as alterações para o GitHub.

---

## 🧩 Etapa 8 — Jogar com amigos

1. Veja no Radmin VPN quem está com o servidor ligado.
2. Copie o IP da pessoa que está hospedando.
3. No Minecraft, vá em "Multiplayer" > "Adicionar servidor".
4. Cole o IP no campo "Endereço do servidor".

✅ Pronto! Você está jogando em um servidor colaborativo com backups automáticos.

---

## ⚠️ Regras importantes

- Nunca dois jogadores devem iniciar o servidor ao mesmo tempo.
- Sempre aguarde o processo de backup terminar antes de fechar o CMD.
- Apenas quem está autorizado no GitHub e no Radmin poderá rodar o servidor.

---

**Dúvidas ou problemas?** Fale com o criador deste servidor para ajuda ou suporte.
