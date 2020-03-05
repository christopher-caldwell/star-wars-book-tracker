const { GraphQLObjectType, GraphQLSchema } = require('graphql')
const { bookQuery, booksQuery, bookMutation } = require('./actions/Book')
const { authorQuery, authorsQuery, authorMutation } = require('./actions/Author')

const RootQuery = new GraphQLObjectType({
  name: 'RootQueryType',
  fields: () => ({
    book: bookQuery,
    books: booksQuery,
    author: authorQuery,
    authors: authorsQuery,
  })
})

// const Mutation = new GraphQLObjectType({
//   name: 'Mutation',
//   fields: () => ({
//     addAuthor: authorMutation,
//     addBook: bookMutation
//   })
// })

module.exports = new GraphQLSchema({
  query: RootQuery,
  // mutation: Mutation
})