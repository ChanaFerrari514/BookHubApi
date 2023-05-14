module.exports = () => async (req, res, next) => {
    const { books } = res.locals

    res.status(200).json({
        success: true,
        data: {
            username,
        },
    })
}

