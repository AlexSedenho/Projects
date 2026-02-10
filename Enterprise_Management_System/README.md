# Enterprise Management System (UrbanSuit Manager)

Um banco de dados relacional robusto desenvolvido para gerenciar recursos, funcionários e projetos de uma organização. Este projeto foi criado como um desafio de design de banco de dados, com foco total na integridade dos dados e em uma arquitetura escalável para sistemas de gestão.

---

## 🚀 Visão Geral

O sistema oferece uma estrutura completa para o ecossistema de uma empresa, abrangendo:
* **Recursos Humanos**: Controle detalhado de funcionários e localizações.
* **Infraestrutura**: Gerenciamento de ativos e equipamentos, incluindo status de manutenção e requisitos de segurança.
* **Gestão de Projetos**: Alocação de recursos e funcionários em projetos específicos, com análise de custos e prazos.
* **Dados Geográficos**: Tabelas normalizadas de países, estados e cidades para suporte a operações em diferentes regiões.

---

## 🛠️ Tecnologias Utilizadas

* **SGBD**: Microsoft SQL Server (T-SQL).
* **Ferramentas**: VS Code com a extensão SQL Server (mssql).
* **Metodologia**: Modelagem relacional normalizada (3NF).

---

## 📁 Estrutura do Projeto

O projeto está organizado em scripts modulares para facilitar a manutenção e os testes:
* `database/schema.sql`: Contém o DDL (Data Definition Language) para construir a estrutura do banco (tabelas, chaves primárias/estrangeiras e constraints).
* `database/seed.sql`: Contém o DML (Data Manipulation Language) para popular o sistema com dados realistas para testes.

---

## ⚙️ Como Executar

1. **Conecte-se à sua instância do SQL Server**: Certifique-se de que o serviço está rodando localmente (ex: `.\SQLEXPRESS`).
2. **Execute o Schema**: Rode o script `schema.sql` primeiro para criar o banco de dados `UrbanSuit_Manager` e suas tabelas.
3. **Popule os Dados**: Rode o script `seed.sql` para inserir os dados de exemplo.
4. **Validação**: Você pode rodar um `SELECT * FROM employees;` para verificar se tudo foi importado corretamente.

> **Nota**: O script de schema inclui uma seção de "Limpeza" (Clean Slate) no topo para facilitar os testes durante o desenvolvimento.

---

## 👨‍💻 Autor

**Alexandre Sedenho** – Estudante de Tecnologia em Análise e Desenvolvimento de Sistemas no **IFSP**.  
Residente em Barretos, SP, focado em desenvolvimento Backend e Engenharia de Dados.