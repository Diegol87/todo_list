const express = require('express')
const { engine } = require('express-handlebars')
const { getTodos, createTodo, deleteTodo } = require('./database')
const app = express()
const port = 3000

app.use('/static', express.static('public'))

app.use(express.json())

const hbs = engine({
    extname: '.hbs',
}) 

app.engine('.hbs', hbs)
app.set('view engine', '.hbs')

app.get('/', (req, res) => {
    res.redirect('/todos')
})

app.get('/todos', async(req, res) => {
    const todos = await getTodos()
    res.render('home', { todos })
})

app.get('/todo-create', async(req, res) => {
    res.render('create')
})

app.post('/todos', async(req, res) => {

    const { title, description } = req.body
    await createTodo(title, description)
    res.send('Todo salio bien')
})

app.get('/todo-delete/:id', async(req, res) => {
    const { id } = req.params
    res.render('delete', { id })
})

app.delete('/todos/:id', async(req, res) => {
    const { id } = req.params
    try {
        const respuesta = await deleteTodo(id)
        res.send(`Dentro de la lista la linea de titulo '${respuesta[0].title}'fue eliminado`)
    } catch(e) {
        res.send(e)
    }
})

app.listen(port, () => {
    console.log(`El servidor se encuentra levantado`)
})
