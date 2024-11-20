# Projeto Ruby on Rails com Devise

## 🚀 Objetivo  
Este projeto foi desenvolvido para gerenciar **usuários**, **posts** e **comentários** utilizando Ruby on Rails e a gem Devise para autenticação.

---

## 🛠️ Tecnologias Utilizadas  
- **Ruby on Rails**: Framework utilizado para o desenvolvimento da aplicação.  
- **Devise**: Gem utilizada para gerenciar autenticação e funcionalidades relacionadas aos usuários.

---

## 📂 Estrutura do Projeto  

### Usuários  
- Gerenciados pelo Devise para **login**, **registro** e **recuperação de senha**.

### Posts e Comentários  
- Recursos criados para possibilitar a criação, edição e exibição de conteúdo.

### Arquivos Gerados  
#### Principais Pastas  
- **`migrations` e `models`**: Configurações do banco de dados e lógica de negócios.  
- **Views (Páginas):**
  - **Criadas automaticamente pelo Devise e Rails.**
  - **Estrutura de Pastas:**
    - **`views/devise`**: Contém as páginas relacionadas à autenticação (ex.: login, registro).  
    - **`views/comments` e `views/posts`**: Contêm as páginas para gerenciar comentários e posts, respectivamente.  
    - **`views/layouts`**: Gerencia o layout geral do site, incluindo a **barra de navegação azul** na parte superior.  
  - **Páginas Estilizadas Específicas:**
    - **Usuários**: `new` e `edit`.  
    - **Posts**: `new`, `edit` e `index`.  
    - **Comentários**: Apenas `new`.

---

## 🗂️ Banco de Dados e Controllers  
- A integração com o banco de dados está configurada nos **controllers**, que incluem as operações de CRUD (**Create, Read, Update, Delete**) para cada recurso.

---

## 🎨 Estilização e Layout  
- **CSS Específico por Página**: Cada página possui seu próprio arquivo de estilo.  
- **CSS do Layout Geral**: Localizado na pasta `assets/stylesheets`.  

---

## 📌 Como Usar  
1. Clone este repositório:  
   ```bash
   git clone https://github.com/DennisArgemiro/rubyproject.git
   ```
2. Instale as dependências:  
   ```bash
   bundle install
   ```
3. Configure o banco de dados:  
   ```bash
   rails db:migrate
   ```
4. Inicie o servidor:  
   ```bash
   rails server
   ```
5. Acesse a aplicação no seu navegador em `http://localhost:80`.
