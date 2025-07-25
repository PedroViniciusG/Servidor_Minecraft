# 🟩 Servidor Minecraft

Este é um servidor Minecraft com sincronização automática via GitHub. Qualquer jogador autorizado pode iniciar o servidor em sua própria máquina, e todas as alterações no mundo serão sincronizadas automaticamente com os outros participantes.

---

## 📁 Estrutura do repositório

```
├── backups/
├── scripts/
│   ├── backup_nuvem.bat.bat          # Faz backup para o GitHub
│   ├── matar_java.bat                # Encerra processos do servidor
│   └── restaurar_nuvem.bat.bat       # Restaura arquivos do GitHub
├── iniciar.bat                       # Inicia o servidor normalmente (baixa arquivos atualizados)
├── server.jar                        # Cria toda configuração inical do servidor (deve ser baixado manualmente)
├── iniciar_primeira_vez.bat          # Gatilho inicial (cria estrutura básica)
├── tutorial.md                       # Ensina todo o processo de como usar o servidor  
```

---

## 🛠️ Funcionalidades

- Sincronização automática dos mundos com GitHub
- Permite que qualquer jogador autorizado inicie o servidor de qualquer máquina
- Restauração automática dos dados mais recentes do mundo
- Backup automático ao fechar o servidor
- Compatível com Radmin VPN para manter o IP fixo

---

## 📎 Observações

- O IP do servidor será o IP individual do Radmin VPN da pessoa que estiver hospedando o mundo.
- Para jogar, basta pegar esse IP no Radmin e adicionar no Minecraft como IP do servidor.
- Apenas um jogador deve estar com o servidor ligado por vez.
- Para alterações avançadas, edite os scripts `.bat` conforme necessário.

---

✅ Para um guia completo de instalação e uso, consulte o arquivo `tutorial.md`.
