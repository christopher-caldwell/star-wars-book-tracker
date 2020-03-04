const { GraphQLObjectType, GraphQLString ,GraphQLID, GraphQLSchema } = require('graphql')

// similar to tables, or groups of data. 
const BookType = new GraphQLObjectType({
  name: 'Book',
  // is a function because reasons
  fields: () => ({
    // define the allowable params of your query
    id: { type: GraphQLID},
    name: { type: GraphQLString},
    genre: { type: GraphQLString},
  })
})

const RootQuery = new GraphQLObjectType({
  name: 'RootQueryType',
  fields: {
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
})

module.exports = new GraphQLSchema({
  query: RootQuery
})