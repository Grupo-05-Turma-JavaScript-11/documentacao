# Dicionário de Dados – Alibabah (db_alibabah)

## Tabela: tb_categorias

| Campo      | Tipo     | Tamanho | Nulo? | Chave | Descrição                                                                 |
|------------|----------|---------|-------|--------|---------------------------------------------------------------------------|
| id         | BIGINT   | —       | Não   | PK     | Identificador único da categoria (auto incremento).                       |
| nome       | VARCHAR  | 100     | Não   | —      | Nome da categoria (ex.: Saladas, Vegano, Snacks Árabes).                  |
| descricao  | VARCHAR  | 255     | Não   | —      | Descrição detalhada da categoria.                                         |
| relacion.  | —        | —       | —     | FK     | Relacionamento 1:N → Uma categoria possui vários pratos (`tb_menu`).      |

## Tabela: tb_usuarios

| Campo     | Tipo     | Tamanho | Nulo? | Chave | Descrição                                                      |
|-----------|----------|---------|-------|--------|----------------------------------------------------------------|
| id        | BIGINT   | —       | Não   | PK     | Identificador único do usuário (auto incremento).              |
| nome      | VARCHAR  | 255     | Não   | —      | Nome completo do usuário (cliente ou vendedor).                |
| foto      | VARCHAR  | 255     | Sim   | —      | URL/caminho da foto do usuário.                                |
| endereco  | VARCHAR  | 255     | Não   | —      | Endereço completo do usuário.                                  |
| email     | VARCHAR  | 255     | Não   | UQ     | E-mail do usuário, utilizado como identificador único.         |
| senha     | VARCHAR  | 255     | Não   | —      | Senha criptografada para autenticação.                         |
| relacion. | —        | —       | —     | FK     | Relacionamento 1:N → Um usuário pode cadastrar vários pratos.  |


## Tabela: tb_menu

| Campo        | Tipo     | Tamanho | Nulo? | Chave | Descrição                                                                   |
|--------------|----------|---------|-------|--------|-------------------------------------------------------------------------------|
| id           | BIGINT   | —       | Não   | PK     | Identificador único do prato (auto incremento).                              |
| nome         | VARCHAR  | 255     | Não   | —      | Nome do prato cadastrado no marketplace.                                     |
| descricao    | VARCHAR  | 255     | Não   | —      | Descrição detalhada do prato.                                                |
| preco        | DECIMAL  | 10,2    | Não   | —      | Preço do prato em reais.                                                     |
| calorias     | INT      | —       | Não   | —      | Valor aproximado de calorias do prato.                                       |
| usuario_id   | BIGINT   | —       | Não   | FK     | Identifica qual usuário/vendedor cadastrou o prato (tb_usuarios).            |
| categoria_id | BIGINT   | —       | Não   | FK     | Identifica a categoria à qual o prato pertence (tb_categorias).              |
| relacion.    | —        | —       | —     | —      | Cada prato pertence a 1 Usuário e 1 Categoria (relacionamentos N:1).        |
