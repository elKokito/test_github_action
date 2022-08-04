const { Pool, Client } = require('pg')

const pg_config = {
    "user": process.env.PGUSER || "postgres",
    "host": process.env.PGHOST || "localhost",
    "database": process.env.PGDATABASE || "postgres",
    "password": process.env.PGPASSWORD || "postgrespw",
    "port": process.env.PGPORT || 55000
}

module.exports = {
    connect: async () => {
        var pool;
        try{
            pool = new Pool(pg_config)
            await pool.query('SELECT NOW()')
        }finally{
            if (pool !== undefined)
                pool.end()
        }
    }
}