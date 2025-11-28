# **ControLeite**

Sistema de inventário e controle para campanhas de doação de leite. O **ControLeite** permite registrar turmas participantes, adicionar informações de entrega e acompanhar, de forma organizada, o andamento geral da campanha.

---

## **📌 Visão Geral**

O objetivo do projeto é facilitar o acompanhamento das doações de leite feitas por diferentes turmas, mantendo um registro claro de:

* Turmas cadastradas

* Datas de entrega

* Quantidade de litros

* Histórico da campanha

O sistema oferece uma interface gráfica simples e intuitiva utilizando **Tkinter \+ ttkbootstrap**, com persistência dos dados em **MySQL**.

---

## **🚀 Funcionalidades**

* **Cadastro de Turmas**  
   Registro de novas turmas participantes (ex.: *2DS-SESI*).

* **Registro de Doações**  
   Seleção da turma cadastrada para incluir informações como:

  * Data da entrega

  * Quantidade de litros doados

* **Consulta e Atualização**  
   Visualização e edição das informações já registradas.

* **Armazenamento Externo**  
   Todos os dados são mantidos em um banco **MySQL** via `mysql-connector-python`.

---

## **🛠 Tecnologias Utilizadas**

* **Python 3**

* **Tkinter \+ ttkbootstrap**

* **MySQL**

* **mysql-connector-python**

---

## **📦 Instalação**

### **1\. Clonar o repositório**

`git clone https://github.com/SEU_USUARIO/ControLeite.git`  
`cd ControLeite`

### **2\. Instalar dependências**

`pip install -r requirements.txt`

*(caso use um arquivo requirements; se não, posso gerar um para você)*

### **3\. Configurar o MySQL**

Crie um banco de dados e ajuste as credenciais no código (arquivo de configuração).

### **📄 Exemplo de Estrutura SQL**

`CREATE DATABASE contro_leite;`

`USE contro_leite;`

`CREATE TABLE turmas (`  
    `id INT PRIMARY KEY AUTO_INCREMENT,`  
    `nome VARCHAR(100) NOT NULL`  
`);`

`CREATE TABLE doacoes (`  
    `id INT PRIMARY KEY AUTO_INCREMENT,`  
    `turma_id INT NOT NULL,`  
    `data_entrega DATE NOT NULL,`  
    `litros DECIMAL(10,2) NOT NULL,`  
    `FOREIGN KEY (turma_id) REFERENCES turmas(id)`  
`);`

---

## **▶️ Como Executar**

`python main.py`

A interface gráfica será iniciada automaticamente.

---

## **📸 Imagens da Interface**

*(Adicionar aqui futuramente prints da aplicação)*  
 `![Tela Inicial](docs/img/tela_inicial.png)`  
 `![Cadastro](docs/img/cadastro.png)`

---

## **🤝 Contribuições**

Contribuições são bem-vindas\!  
 Sinta-se à vontade para abrir **issues**, enviar **pull requests** ou sugerir melhorias.

---

## **📄 Licença**

Este projeto não possui licença definida.  
 Por padrão, todos os direitos são reservados ao autor.

