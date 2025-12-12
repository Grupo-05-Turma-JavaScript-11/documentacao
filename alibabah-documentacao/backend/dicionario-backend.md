# 📘 Dicionário de Atributos – Backend Alibabah (NestJS / TypeORM)

Este documento descreve os atributos presentes nas entidades do backend do projeto **Alibabah – Plataforma de Delivery de Alimentos Saudáveis**.

As entidades implementadas nesta etapa são: **Usuário**, **Categoria** e **Menu**.

---

# 🧍 Entidade: Usuário
Representa a tabela **tb_usuarios** no banco de dados.

### **Atributos**

#### **id**
- **Tipo (TS):** number  
- **Banco:** BIGINT, PK, AUTO_INCREMENT, NOT NULL  
- **Descrição:** identificador único do usuário.

#### **nome**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** nome completo do usuário.

#### **foto**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NULL  
- **Descrição:** URL ou caminho da foto do usuário (campo opcional).

#### **endereco**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** endereço do usuário.

#### **email**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), UNIQUE, NOT NULL  
- **Descrição:** e-mail de acesso à plataforma; não pode se repetir.

#### **senha**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** senha criptografada do usuário.

---

# 🧭 Entidade: Categoria
Representa a tabela **tb_categorias**, utilizada para agrupar os pratos do menu.

### **Atributos**

#### **id**
- **Tipo (TS):** number  
- **Banco:** BIGINT, PK, AUTO_INCREMENT, NOT NULL  
- **Descrição:** identificador único da categoria.

#### **nome**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** nome da categoria (ex.: “Saladas”, “Vegano”, “Snacks Árabes”).

#### **descricao**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** descrição breve sobre a categoria.

---

# 🍲 Entidade: Menu
Representa a tabela **tb_menu**, contendo os pratos ofertados pelos vendedores.

### **Atributos**

#### **id**
- **Tipo (TS):** number  
- **Banco:** BIGINT, PK, AUTO_INCREMENT, NOT NULL  
- **Descrição:** identificador único do prato.

#### **nome**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** nome do prato.

#### **descricao**
- **Tipo (TS):** string  
- **Banco:** VARCHAR(255), NOT NULL  
- **Descrição:** descrição breve do prato.

#### **preco**
- **Tipo (TS):** number  
- **Banco:** DECIMAL(10,2), NOT NULL  
- **Descrição:** preço do prato em reais.

#### **calorias**
- **Tipo (TS):** number  
- **Banco:** INT, NOT NULL  
- **Descrição:** quantidade aproximada de calorias do prato.

#### **usuario_id**
- **Tipo (TS):** number  
- **Banco:** BIGINT, FK → tb_usuarios.id  
- **Descrição:** identifica qual usuário/vendedor cadastrou o prato.

#### **categoria_id**
- **Tipo (TS):** number  
- **Banco:** BIGINT, FK → tb_categorias.id  
- **Descrição:** identifica a categoria à qual o prato pertence.

---

#  Observações Gerais

- As validações de cada atributo são aplicadas nas entidades utilizando **class-validator**.  
- O **TypeORM** cria e sincroniza automaticamente as tabelas no banco conforme a configuração de cada entity.  
- Os relacionamentos seguem o modelo:
  - **1 Usuário → N Pratos**
  - **1 Categoria → N Pratos**

---

⚠️ *Este dicionário será atualizado conforme novas entidades forem adicionadas ao backend.*

