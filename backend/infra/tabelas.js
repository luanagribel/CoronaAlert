class Tabelas{
    init(conexao){
        this.conexao = conexao
        this.criarContatos()
    }

    criarContatos(){
        const sql = 'CREATE TABLE IF NOT EXISTS Contatos (id int NOT NULL AUTO_INCREMENT, nome varchar(50) NOT NULL, email varchar(50), mensagem text, PRIMARY KEY(id))'

        this.conexao.query(sql, erro => {
            if(erro){
                console.log(erro)
            }else {
                console.log('Tabela Contatos criada com sucesso')
            }
        })
    }
}

module.exports = new Tabelas