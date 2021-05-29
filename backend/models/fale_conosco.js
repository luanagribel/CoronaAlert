const moment = require('moment')
const { restart } = require('nodemon')

const conexao = require('../infra/conexao')

class Contato{
    adiciona(contato,res){
      //  const dataEnvio = moment().format('YYYY-MM-DD HH:mm:ss')
        const nomeEhValido = contato.nome.length >= 3

        const validacoes = [
            {
                nome: 'nome',
                valido: nomeEhValido,
                mensagem: 'Nome deve ter pelo menos 3 caracteres'
            }
        ]

        const erros = validacoes.filter(campo => !campo.valido)
        const existemErros = erros.length

        if(existemErros){
            res.status(400).json(erros)
        }else{
            const contatoDatado = {...contato}
            const sql = 'INSERT INTO Contatos SET ?'

            conexao.query(sql, contatoDatado, (erro, resultados) => {
                if(erro){
                    res.status(400).json(erro)
                }else{
                    res.status(201).json(contato)
                }
            })
        }

    }

        lista(res){
            const sql = 'SELECT * FROM Contatos'
    
            conexao.query(sql, (erro, resultados) => {
                if(erro){
                    res.status(400).json(erro)
                }else{
                    res.status(200).json(resultados)
                }
            })
        }

        buscaPorId(id, res){
            const sql = `SELECT * FROM Contatos WHERE id=${id}`
    
            conexao.query(sql, (erro, resultados) => {
    
                const contato = resultados[0]   
    
                if(erro){
                    res.status(400).json(erro)
                }else{
                    res.status(200).json(contato)
                }
            })
        }

        deleta(id, res){
            const sql = `DELETE FROM Contatos WHERE id=?`
    
            conexao.query(sql, id, (erro, resultados) => {
                if(erro){
                    res.status(400).json(erro)
                }else{
                    res.status(200).json({id})
                }
            })
        }
    }

    module.exports = new Contato