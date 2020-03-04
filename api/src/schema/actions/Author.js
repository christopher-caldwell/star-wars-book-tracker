const { GraphQLList, GraphQLString, GraphQLInt, GraphQLID, GraphQLNonNull } = require('graphql')
const db = require('../../db')
const AuthorType = require('../types/Author')
console.log('book type', AuthorType)

const authorsQuery = {
  // relates to the defined schema
  type: GraphQLList(AuthorType),
  resolve(){
    // data fetching code
    return db('author')
  }
}

const authorQuery = {
  // relates to the defined schema
  type: AuthorType,
  // they will pass an arg that is the book ID, which will be a string
  args: { id: { type: GraphQLID } },
  async resolve(_, { id }){
    // data fetching code
    const [ author ] = await db('author').where({
      id
    })
    return author
  }
}

const authorMutation = {
  type: AuthorType,
  args: {
    name: { type: GraphQLNonNull(GraphQLString) },
    age: { type: GraphQLNonNull(GraphQLInt) }
  },
  resolve(){
    return null
  }
}

module.exports = { authorQuery, authorsQuery,  authorMutation }