const { insertUser, selectByUsername } = require('./queries')

const createUser = (db) => async (username, password) => {
    try {
        await db.query(insertUser(username,password))
        return {
            ok: true,
        }
    } catch(error) {
        console.info('> create user error: ', error.message)
        return {
            ok: false,
            message: error.message,
        }
    }
}

const selectUser = (db) => async (username, compareFn) => { // selectUser query le pasamos (username,compareFN)
    try {
        const user = await db.maybeOne(selectByUsername(username)) // lo buscamos y si no esta ...

        //console.info('> USER: ', user)

        if(!user) return {
            ok: false,
            error_code: 'wrong_data',
        }
        
        const areEqual = await compareFn(user.password) // comparamos contrasena

        //console.info('> Son iguales?', areEqual)

        if(!areEqual) return {
            ok:false,
            error_code: 'wrong_data',
        }
        
        return {
        ok: true,
        content: {
            username: user.username, // si toda sale bien solo sale el username
        }
        }

 } catch(error) {
    console.info('> create user error: ', error.message)
    return {
        ok: false,
        message: error.message,
    }
 }
}

module.exports = {
    createUser,
    selectUser,
}