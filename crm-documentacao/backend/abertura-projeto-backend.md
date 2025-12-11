# Abertura do Projeto Backend – CRM Abgail

O backend do projeto CRM Abgail tem como objetivo fornecer uma API REST para o gerenciamento dos dados do sistema. Nesta primeira etapa, a entidade implementada foi **Médico**, com operações básicas de CRUD utilizando NestJS e TypeORM.

Para detalhes técnicos dos atributos, consulte o arquivo:
[dicionario-de-atributos-backend.md](./dicionario-de-atributos-backend.md)

## Arquitetura Utilizada

O backend segue o padrão modular do NestJS, composto pelos seguintes elementos:

**Entity (`medico.entity.ts`)**
Representa a tabela `tb_medicos` no banco de dados.
Inclui validações e configuração dos campos, como:

* id – chave primária auto incremento
* nome – varchar(100)
* crm – varchar(15), único
* telefone – varchar(20)
* turno_trabalho – varchar(100)

**Controller (`medico.controller.ts`)**
Recebe e processa requisições HTTP.
Endpoints implementados:

* `GET /medico` – retorna/lista todos os médicos
* `GET /medico/:id` – busca médico por ID
* `GET /medico/nome/:nome` – busca médico pelo nome (ILike)
* `POST /medico` – cria novo cadastro de médico
* `PUT /medico` – atualiza o cadastro de um médico existente
* `DELETE /medico/:id` – exclui o cadastro de um médico

**Service (`medico.service.ts`)**
Contém a lógica de negócio da entidade Medico, incluindo:

* validações de existência
* busca filtrada por nome (ILike)
* salvamento e atualização de registros
* tratamento de erros com `HttpException` e `HttpStatus`
* integração com o repositório do TypeORM

**Module (`medico.module.ts`)**
Organiza a estrutura do módulo Médico, agrupando controller, service e entity, permitindo que seja importado pelo AppModule.

## Integração com Banco de Dados
A API utiliza MySQL integrado com TypeORM.  
As principais configurações definidas no `app.module.ts` são:

* Host: localhost  
* Porta: 3306  
* Usuário: root  
* Senha: root  
* Banco: db_abgail  
* Entities: Medico  
<!--* Synchronize: true-->  

O TypeORM cria automaticamente a tabela `tb_medicos` com base na entity.

## Status atual do `backend`

* CRUD completo da entidade Médico
* Integração funcional com MySQL
* Validações aplicadas com class*validator
* Tratamento de erros implementado
* Arquitetura organizada em módulos

⚠️ Este arquivo será atualizado conforme novas entidades forem adicionadas ao projeto.
