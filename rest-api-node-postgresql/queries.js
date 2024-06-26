const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'bbdb',
  password: 'root',
  port: 5432,
})

const getUsers = (request, response) => {
  pool.query('SELECT * FROM users ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getUserById = async (request, response) => {
  try {
    const id = request.params.name;
    //console.log(id);
    // Validate id (implementation omitted for brevity)

    const results = await pool.query('SELECT * FROM users WHERE id = $1', [id]);
    response.status(200).json(results.rows);
  } catch (error) {
    console.error(error);
    response.status(400).json({ error: 'Failed to retrieve user' });
  }
}

// const getUserById = async (request, response) => {
//   try {
//     const id = request.params.id;
//     //console.log(id);
//     // Validate id (implementation omitted for brevity)

//     const results = await pool.query('SELECT * FROM users WHERE id = $1', [id]);
//     response.status(200).json(results.rows);
//   } catch (error) {
//     console.error(error);
//     response.status(400).json({ error: 'Failed to retrieve user' });
//   }
// }

// const getUserById = (request, response) => {
//   const id = (request.params.id)

//   pool.query('SELECT * FROM users WHERE id = $1', [id], (error, results) => {
//     if (error) {
//       console.error(error);
//     }
//     response.status(200).json(results.rows[0])
//   })
// }

const createUser = (request, response) => {
  const { name, email } = request.body

  //pool.query('INSERT INTO users (name, email) VALUES ($1, $2)', [name, email], (error, results) => {
    pool.query('CALL insert_data($1,$2)', [name, email], (error, results) => {
    if (error) {
      throw error
    }
    response.status(201).send(`User added with ID: ${results.insertId}`)
  })
}

const updateUser = (request, response) => {
  const id = parseInt(request.params.id)
  const { name, email } = request.body

  pool.query(
    'UPDATE users SET name = $1, email = $2 WHERE id = $3',
    [name, email, id],
    (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).send(`User modified with ID: ${id}`)
    }
  )
}

const deleteUser = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('DELETE FROM users WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).send(`User deleted with ID: ${id}`)
  })
}

module.exports = {
  getUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser,
}