const { GraphQLObjectType, GraphQLSchema } = require('graphql')
const { BookQuery, BooksQuery } = require('./Book')
const { AuthorQuery, AuthorsQuery } = require('./Author')

const RootQuery = new GraphQLObjectType({
  name: 'RootQueryType',
  fields: {
    book: BookQuery,
    books: BooksQuery,
    author: AuthorQuery,
    authors: AuthorsQuery,
  }
})

module.exports = new GraphQLSchema({
  query: RootQuery
})