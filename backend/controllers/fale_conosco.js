const contatos = require('../models/fale_conosco')
const Contato = require('../models/fale_conosco')

module.exports = app => {

    app.get('/contatos', (req, res) => {
        
        Contato.lista(res)
    })

    app.get('/contatos/:id', (req, res) => {
        const id = parseInt(req.params.id)

        contatos.buscaPorId(id, res)

    })

    app.post('/contatos', (req,res) => { 
    
        const contato = req.body
        Contato.adiciona(contato, res)
        
    })

 }