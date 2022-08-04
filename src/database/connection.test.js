const connection = require('./connection')

describe(`testing connection`, () => {

  it('to Postgres', async () => {
    await connection.connect()
  });

});