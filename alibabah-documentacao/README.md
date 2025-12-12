#  Alibabah — Plataforma de Delivery de Alimentos Saudáveis  
## Projeto Integrador — Generation Brasil | Backend com NestJS



![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow?style=for-the-badge)

---

#  **Sobre o Projeto**
Este repositório contém o backend do **Alibabah**, uma plataforma de delivery especializada em alimentos inspirados na culinária árabe.

O projeto foi desenvolvido como **Projeto Integrador** da Generation Brasil, seguindo boas práticas de arquitetura, modularização, organização de código e desenvolvimento backend com **Node.js + NestJS + TypeORM**.

---

#  **Título do Projeto e Modelo de Negócio**
**Nome do Projeto:** *Alibabah – Plataforma de Delivery de Alimentos*  
**Modelo de Negócio:** *Marketplace de Delivery*  
→ Intermediação entre usuarios (donos dos pratos) e consumidores (usuários finais).

---

# **Descrição Geral**
O **Alibabah** foi criado com a proposta de facilitar o acesso a comidas saudáveis inspiradas na culinária árabe.  
A aplicação permite:

- Cadastro de vendedores (usuários)
- Cadastro de pratos e categorias
- Exibição e consulta dos menus
- Lógica inteligente de recomendação de pratos saudáveis

A API é totalmente preparada para integração futura com **mobile, frontend web e microsserviços**.

---

#  **Modelagem do Sistema (Entidades)**
O sistema possui **três entidades principais**, essenciais para o funcionamento do marketplace:

---

## 👤 **Entidade: Usuário**
Representa tanto vendedores quanto clientes.

**Atributos:**
- id  
- nome  
- foto  
- endereco  
- email  
- senha  

📌 **Relacionamento:** 1 Usuário possui N itens de menu.

---

## 🧭 **Entidade: Categoria**
Organiza os itens do menu.

**Atributos:**
- id  
- nome  
- descricao  

📌 **Relacionamento:** 1 Categoria possui N itens de menu.

---

## 🍲 **Entidade: Menu**
Representa os pratos disponíveis no marketplace.

**Atributos:**
- id  
- nome  
- descricao  
- preco  
- calorias  
- usuario_id (FK)  
- categoria_id (FK)  

📌 **Relacionamento:** Cada prato pertence a um Usuário e a uma Categoria.

---

#  **CRUDs Implementados**

## 👤 Usuário
- Criar usuário  
- Listar usuários  
- Buscar usuário por ID  
- Atualizar usuário  
- Excluir usuário  

## 🧭 Categoria
- Criar categoria  
- Listar categorias  
- Buscar categoria por ID  
- Atualizar categoria  
- Excluir categoria  

## 🍲 Menu
- Criar item de menu  
- Listar itens  
- Buscar por ID  
- Atualizar item  
- Excluir item  

---

# 🌱 **Funcionalidade Extra – Recomendação de Alimentos Saudáveis**
O backend inclui um serviço especial desenvolvido em **JavaScript puro**, que recomenda pratos mais saudáveis ao usuário.

### 🎯 Objetivo
Sugerir pratos com melhor qualidade nutricional.

### 📌 Critérios usados:
- Baixa caloria (≤ 300 kcal)
- Reconhecimento de palavras-chave saudáveis no nome/descrição:
  - *salada*, *vegano*, *vegetariano*, *light*, *fit*
- Cálculo de score combinando:
  → Calorias  
  → Palavras-chave encontradas  

### 🔍 Resultado
Retorna uma lista dos pratos mais saudáveis ordenados por pontuação.

---

# **Tecnologias Utilizadas**

###  Backend
![Node](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)
![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![TypeORM](https://img.shields.io/badge/TypeORM-FE0902?style=for-the-badge&logo=typeorm&logoColor=white)

###  Banco de Dados
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

→ Suporte nativo para relacionamentos, integridade referencial e chaves estrangeiras.

###  Ferramentas Complementares

![Git](https://img.shields.io/badge/Git-F05033?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=github&logoColor=white)
![MySQL Workbench](https://img.shields.io/badge/MySQL_Workbench-00618A?style=for-the-badge&logo=mysql&logoColor=white)
![VS Code](https://img.shields.io/badge/VS_Code-0078D4?style=for-the-badge&logo=visualstudiocode&logoColor=white)
![Insomnia](https://img.shields.io/badge/Insomnia-4000BF?style=for-the-badge&logo=insomnia&logoColor=white)
![Trello](https://img.shields.io/badge/Trello-0052CC?style=for-the-badge&logo=trello&logoColor=white)

---

# 📂 Estrutura do Projeto (NestJS)

