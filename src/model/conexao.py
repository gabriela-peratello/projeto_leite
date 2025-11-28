import mysql.connector

#CRIAR A CONEXÃO
def criar_conexao():
    conexao = mysql.connector.connect(
        host="localhost",
        port = 3306,
        user="root",
        password="root",
        database = "registros_leite"
)
    cursor = conexao.cursor()
    return conexao, cursor


if __name__ == "__main__":
    conexao, cursor = criar_conexao()