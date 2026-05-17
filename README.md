# KOM iniciando na 1.12.2 com dependências incluídas

Depois de muito tempo vendo a dificuldade que muita gente tinha para subir o nosso tão amado KOM, resolvi criar este fork já com as dependências e a compilação prontas, facilitando a instalação e execução do servidor.

## 🚀 Como iniciar

### 1. Configure o banco de dados

* Crie um servidor **MariaDB**.
* Importe o arquivo `kom.sql` localizado na raiz do projeto.

### 2. Crie o usuário do banco

No MariaDB, crie um usuário com as seguintes credenciais:

* **Usuário:** `komuser`
* **Senha:** `KomSenha`

### 3. Inicie o servidor

Utilize **Java 1.8** e execute o seguinte comando dentro da pasta `server`:

```bash
java -Xms1G -Xmx2G -jar spigot-1.12.2.jar nogui
```

---

## 📌 Planos futuros

* Containerizar o servidor com Docker;
* Atualizar para uma versão mais moderna do Minecraft *(processo extremamente complicado devido às dependências e compatibilidade do projeto)*.
