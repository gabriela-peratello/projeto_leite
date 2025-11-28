from conexao import criar_conexao

class Turma_model():

    def inserir_sala(self,sala, representante) -> bool:
        conexao, cursor = criar_conexao()
