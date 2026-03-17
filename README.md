# 📚 Análise de Dados com SQL — Plataforma de Livros

## 📌 Sobre o projeto
Este projeto consiste em uma análise de dados utilizando SQL em um banco de dados de uma plataforma de livros online.

O objetivo foi explorar informações sobre livros, autores, editoras e comportamento dos usuários para identificar padrões relevantes que possam apoiar o desenvolvimento de novos produtos voltados para leitores.

---

## 🎯 Objetivo
Investigar o catálogo da plataforma e o comportamento dos usuários, buscando responder perguntas relacionadas a:

- popularidade de livros  
- desempenho de autores e editoras  
- engajamento dos usuários  

---

## 🗂️ Estrutura dos dados

O banco de dados é composto pelas seguintes tabelas:

- **books** — informações sobre livros  
- **authors** — dados dos autores  
- **publishers** — editoras  
- **ratings** — avaliações numéricas  
- **reviews** — avaliações textuais  

As tabelas estão relacionadas principalmente pelo campo `book_id`.

---

## ❓ Perguntas de análise

- Quantos livros foram publicados após o ano 2000?  
- Quais livros possuem mais avaliações?  
- Qual editora publicou mais livros relevantes?  
- Quais autores possuem melhor avaliação média?  
- Como se comportam os usuários mais ativos?  

---

## 🛠️ Tecnologias utilizadas
- SQL  

---

## 🧠 Técnicas aplicadas

- JOIN entre múltiplas tabelas  
- GROUP BY e agregações  
- filtros com WHERE  
- análise de médias e contagens  
- subconsultas  

---

## 📊 Principais insights

- 819 livros foram publicados após o ano 2000, indicando um catálogo majoritariamente recente  
- A editora Penguin Books possui o maior número de livros com mais de 50 páginas (42 títulos)  
- J.K. Rowling apresentou a maior média de avaliação (~4.41) entre livros com pelo menos 50 avaliações  
- Usuários mais ativos (com mais de 50 avaliações) escrevem, em média, 24.33 reviews  
- A distribuição de avaliações indica grande variação de popularidade entre os livros  

---

## 🚀 Como executar

1. Acesse o banco de dados  
2. Execute as queries SQL disponíveis no projeto  

---

## 👨‍💻 Autor
Victor Marcinco Ferreira
