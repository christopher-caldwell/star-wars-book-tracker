const { GraphQLObjectType, GraphQLSchema } = require('graphql')
const { bookQuery, booksQuery, bookMutation } = require('./Book')
const { authorQuery, authorsQuery, authorMutation } = require('./Author')

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