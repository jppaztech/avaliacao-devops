# Avaliação Prática – Unidade I (TechSolutions)
> **Desafio DevOps:** Construção de um Ambiente Reproduzível

---

## 1. Identificação da Equipe
- **Integrantes:** João Paulo Paz e Bruno Henrique Souza
- **Disciplina:** Configuração e Manutenção de Infraestrutura de Software (DevOps)
- **Empresa / Projeto:** TechSolutions

---

## 2. Objetivo do Projeto
Padronizar e automatizar o ambiente de desenvolvimento da **TechSolutions**, eliminando configurações manuais através do uso de **Dockerfile**, **Docker Compose** e controle de versão via **Git**, garantindo total reprodutibilidade do ambiente [7].

---

## 3. Diagnóstico do Ambiente (Etapa 1)
- **Equipe:** João Paulo Paz e Bruno Henrique Souza
- **Usuário conectado:** joao
- **Hostname:** Ubuntu-Server
- **Endereço IP da VM:** 10.0.2.15
- **Sistema Operacional:** Ubuntu 24.04.5 LTS (noble)
- **Versão do Git:** 2.43.0
- **Versão do Docker:** 29.1.3
- **Versão do Docker Compose:** 1.29.2

---

## 4. Arquitetura e Serviços Criados
O ambiente é orquestrado via Docker Compose em uma rede isolada do tipo *bridge*, contendo 3 serviços [7]:

1. **`app` (Aplicação Web):** Gerada a partir de um `Dockerfile` próprio (Nginx Alpine) que empacota a aplicação `index.html` v1.0 [7].
2. **`mysql` (Banco de Dados):** Servidor MySQL 8.0 configurado com o banco de dados `empresa` e usuário `aluno` [7].
3. **`phpmyadmin` (Gerenciador do Banco):** Interface web para administração do MySQL, comunicando-se internamente com o banco pelo nome do serviço `mysql` [7].

---

## 5. Mapeamento de Portas
| Serviço | Porta Interna | Porta Externa (Host) | URL de Acesso |
| :--- | :---: | :---: | :--- |
| **Aplicação Web (`app`)** | `80` | `8080` | http://localhost:8080 |
| **phpMyAdmin (`phpmyadmin`)** | `80` | `8081` | http://localhost:8081 |
| **MySQL (`mysql`)** | `3306` | *Interna Docker* | Comunicador interno (`PMA_HOST: mysql`) |

---

## 6. Procedimentos de Operação

### A. Iniciar e Construir o Ambiente
```bash
docker compose up -d --build
```
