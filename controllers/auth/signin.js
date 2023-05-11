const { hash, serialize } = require('simple-stateless-auth-library')
const errors = require('../../misc/errors')
const { selectUser } = require('../../models/auth')

module.exports = (db) => async (req, res, next) => {
    const { username, password } = req.body // los campos existen

    if (!username || !password) return next(errors[400])

    const response = await selectUser(await db)(username, hash.compare(password)) // coger el usuario hemos ido a buscarlo

    if(!response.ok) return next(errors[response.error_code || 500]) // 500 un error de codigo no del usuario

    serialize(res, response.content) // { username: "Chana" } 

    res.status(200).json({
        success: true,
    })
}