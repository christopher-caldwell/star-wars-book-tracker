const express = require('express')
const graphqlHTTP = require('express-graphql')
const schema = require('./schema')

const app = express() 

// middleware
app.use('/graphql', graphqlHTTP({
  schema,
  graphiql: true
}))

const port = process.env.PORT ||  5000
app.listen(port, () => {
  console.log('Skynet is active')
})