# Dicionário de Atributos – Backend (NestJS / TypeORM)

Este documento descreve os atributos presentes nas entidades do backend do projeto CRM Abgail.  
Nesta etapa, apenas a entidade **Médico** foi implementada.

## Entidade: Médico

Representa a tabela `tb_medicos` no banco de dados.

### Atributos

**id**  
* Tipo: number (TypeScript)  
* Banco: BIGINT, PK, AUTO, NOT NULL
* Descrição: identificador único do médico.

**nome**  
* Tipo: string  
* Banco: VARCHAR(100), NOT NULL  
* Descrição: nome completo do médico.

**crm**  
* Tipo: string  
* Banco: VARCHAR(15), UNIQUE, NOT NULL  
* Descrição: registro profissional do médico (CRM), não pode se repetir.

**telefone**  
* Tipo: string  
* Banco: VARCHAR(20), NOT NULL  
* Descrição: telefone de contato do médico.

**turno_trabalho**  
* Tipo: string  
* Banco: VARCHAR(100), NOT NULL  
* Descrição: turno em que o médico trabalha (manhã, tarde ou noite).

## Observações

* Os atributos são validados por `class-validator` dentro da entity.  
* O TypeORM cria e sincroniza a tabela automaticamente conforme definido na entity Médico.
  
⚠️ Este dicionário será atualizado conforme novas entidades forem adicionadas ao backend.
