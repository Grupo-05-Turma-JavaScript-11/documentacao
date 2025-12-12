#  Abertura do Projeto Backend – Alibabah

O backend do projeto **Alibabah** tem como objetivo fornecer uma **API RESTful** para o gerenciamento das funcionalidades essenciais da plataforma de delivery de alimentos saudáveis.  
Nesta primeira versão foram implementadas três entidades principais: **Usuário**, **Categoria** e **Menu**, todas com operações completas de **CRUD**, seguindo o padrão arquitetural do **NestJS** e utilizando o **TypeORM** para integração com o banco de dados MySQL.

Para detalhes técnicos dos atributos, consulte o arquivo:  
**dicionario-de-atributos-backend.md**

---

#  Arquitetura Utilizada

O backend segue a arquitetura modular do NestJS, composta por quatro componentes fundamentais:

- **Entity** → Representa tabelas no banco via TypeORM  
- **Controller** → Recebe e processa requisições HTTP  
- **Service** → Contém a lógica de negócio  
- **Module** → Agrupa entity + controller + service

A seguir, a estrutura aplicada em cada entidade:

---

#  1. Entidade Usuário (`usuario.entity.ts`)

Representa os usuários da plataforma (clientes ou vendedores).  
Inclui a definição dos campos e o relacionamento com a tabela de menu.

### **Atributos**
- `id` – chave primária  
- `nome` – varchar(255)  
- `foto` – varchar(255) (opcional)  
- `endereco` – varchar(255)  
- `email` – varchar(255)  
- `senha` – varchar(255)  

### **Controller (`usuario.controller.ts`) — Endpoints**
- `GET /usuario` – lista todos os usuários  
- `GET /usuario/:id` – busca usuário por ID  
- `POST /usuario` – cria novo usuário  
- `PUT /usuario/:id` – atualiza usuário  
- `DELETE /usuario/:id` – exclui usuário  

### **Service (`usuario.service.ts`) — Lógica**
- validação de existência  
- criação e edição  
- integração com TypeORM Repository  
- tratamento de erros com `HttpException` e `HttpStatus`

---

 2. Entidade Categoria (`categoria.entity.ts`)

Organiza os itens do menu de acordo com grupos específicos (ex.: saladas, wraps, vegano).

### **Atributos**
- `id` – chave primária  
- `nome` – varchar(255)  
- `descricao` – varchar(255)  

### **Controller — Endpoints**
- `GET /categorias`  
- `GET /categorias/:id`  
- `POST /categorias`  
- `PUT /categorias/:id`  
- `DELETE /categorias/:id`  

### **Service**
- validações de existência  
- atualizações seguras  
- deleção  
- integração com banco via TypeORM

---

# 3. Entidade Menu (`menu.entity.ts`)

Representa os pratos disponibilizados pelos vendedores cadastrados na plataforma.

### **Atributos**
- `id` – chave primária  
- `nome` – varchar(255)  
- `descricao` – varchar(255)  
- `preco` – decimal  
- `calorias` – inteiro  
- `usuario_id` – chave estrangeira  
- `categoria_id` – chave estrangeira  

### **Controller — Endpoints**
- `GET /menu` – lista todos os pratos  
- `GET /menu/:id` – busca por ID  
- `POST /menu` – cria item  
- `PUT /menu/:id` – atualiza item  
- `DELETE /menu/:id` – exclui item  

### **Service**
- validação de chaves estrangeiras (usuário & categoria)  
- criação e atualização  
- exclusão segura  
- tratamento de exceções  
- integração com TypeORM

---

# 🌱 Funcionalidade Extra – Recomendação de Pratos Saudáveis

O projeto inclui uma funcionalidade especial de recomendação inteligente, desenvolvida em **JavaScript puro**, que sugere pratos saudáveis ao usuário com base em critérios nutricionais.

### **Critérios usados**
- baixa caloria (≤ 300 kcal)  
- palavras-chave saudáveis:  
  *salada*, *vegano*, *vegetariano*, *fit*, *light*  
- cálculo de **score** combinando calorias + relevância saudável  

Esta feature está implementada como um service independente e pode ser consumida via endpoint.

---

#  Integração com Banco de Dados (MySQL + TypeORM)

Configurações padrão do `app.module.ts`:

- **Host:** localhost  
- **Porta:** 3306  
- **Usuário:** root  
- **Senha:** root  
- **Banco:** `db_alibabah`  
- **Entities:** Usuário, Categoria, Menu  

O TypeORM é responsável por sincronizar as tabelas automaticamente com base nas entidades definidas.

---

# 📌 Status Atual do Backend

✔️ CRUD completo das entidades Usuário, Categoria e Menu  
✔️ Integração funcional com MySQL  
✔️ Validações estruturadas com *class-validator*  
✔️ Tratamento de erros com NestJS  
✔️ Arquitetura modular limpa e escalável  
✔️ Serviço de recomendação implementado  

⚠️ *Este arquivo será atualizado conforme novas funcionalidades forem implementadas.*
