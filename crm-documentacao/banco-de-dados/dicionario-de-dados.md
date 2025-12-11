# Dicionário de Dados - CRM Abgail (db_abgail)

## Tabela: tb_medicos

| Campo           | Tipo           | Tamanho | Nulo? | Chave | Descrição                                          |
|-----------------|----------------|---------|-------|--------|---------------------------------------------------|
| id              | BIGINT         | —       | Não   | PK     | Identificador único do médico (auto incremento)   |
| nome            | VARCHAR        | 100     | Não   | —      | Nome completo do médico                           |
| crm             | VARCHAR        | 15      | Não   | UQ     | Número do CRM, único para cada médico             |
| telefone        | VARCHAR        | 20      | Não   | —      | Telefone para contato                             |
| turno_trabalho  | VARCHAR        | 100     | Não   | —      | Turno em que o médico trabalha (manhã/tarde/noite)|
