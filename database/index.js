require('dotenv').config()

const { Pool } = require('pg')
const connectionString = process.env.DATABASE_URL || 'postgresql://esadiz87@localhost:5432/simple_db'

const pool = new Pool({
    connectionString: connectionString,
    ssl: {
        rejectUnauthorized: false
    }
})

const getTodos = () => {
    return pool
        .query('SELECT * from todos')
        .then(res => res.rows)
        .catch((e) => console.log(e))
}

const createTodo = (title, description) => {
    return pool
        .query('INSERT INTO todos (title, description) VALUES ($1, $2)', [title, description])
        .then(res => res.rows)
        .catch((e) => console.log(e))
}

const deleteTodo = (id) => {
    return pool
        .query('DELETE FROM todos WHERE id = $1', [id])
        .then(() => ({
            ok: true,
        }))
        .catch((e) => ({
            ok: false,
            data: e,
        }))
}
 
module.exports = { getTodos, createTodo, deleteTodo }