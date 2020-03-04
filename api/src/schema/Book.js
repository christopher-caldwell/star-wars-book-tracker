const { GraphQLObjectType, GraphQLString ,GraphQLID, GraphQLList } = require('graphql')
const AuthorType = require('./Author')

// similar to tables, or groups of data. 
const BookType = new GraphQLObjectType({
  name: 'Book',
  // is a function because reasons
  fields: () => ({
    // define the allowable params of your query
    id: { type: GraphQLID},
    name: { type: GraphQLString},
    genre: { type: GraphQLString},
    author: {
      type: AuthorType,
      resolve(parent, args){

      }
    }
  })
})

const BooksQuery = {
  // relates to the defined schema
  type: new GraphQLList(BookType),
  resolve(parent, args){
    // data fetching code
  }
}

const BookQuery = {
  // maps to the query construction
  book: {
    // relates to the defined schema
    type: BookType,
    // they will pass an arg that is the book ID, which will be a string
    args: { id: { type: GraphQLID } },
    resolve(parent, args){
      // data fetching code
    }
  }
}

module.exports = { BookType, BookQuery, BooksQuery }