const { GraphQLString, GraphQLID, GraphQLList, GraphQLNonNull } = require('graphql')
const db = require('../../db')
const BookType = require('../types/Book')

// all books
const booksQuery = {
  type: GraphQLList(BookType),
  async resolve(){
    return db('book')
  }
}

const bookQuery = {
  // relates to the defined schema
  type: BookType,
  // they will pass an arg that is the book ID, which will be a string
  args: { id: { type: GraphQLID } },
  async resolve(parent, { id }){
    // data fetching code
    const [ book ] = await db('book').where({
      id
    })
    return book
  }
}

const bookMutation = {
  type: BookType,
  args: {
    name: { type: GraphQLNonNull(GraphQLString) },
    authorId: { type: GraphQLID },
    genre: { type: GraphQLString }
  },
  resolve(){
    return null
  }
}

module.exports = { bookQuery, booksQuery, bookMutation }