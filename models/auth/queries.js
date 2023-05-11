const { sql } = require('slonik')

const insertUser = (username, password) => sql.unsafe`
    INSERT INTO users (
        username, password
        ) VALUES (
            ${username}, ${password}
        );    
`

const selectByUsername = (username) => sql.unsafe`
            SELECT unsername, password
            FROM users
            WHERE username LIKE ${username}
`

module.exports = {
    insertUser,
    selectByUsername,
}