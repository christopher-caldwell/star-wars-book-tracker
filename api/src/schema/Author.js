const { GraphQLObjectType, GraphQLList, GraphQLString, GraphQLInt ,GraphQLID } = require('graphql')
const BookType = require('./Book')

// similar to tables, or groups of data. 
const AuthorType = new GraphQLObjectType({
  name: 'Author',
  // is a function because of scoping of BookType
  fields: () => ({
    // define the allowable params of your query
    id: { type: GraphQLID},
    name: { type: GraphQLString},
    age: { type: GraphQLInt},
    books: {
      type: new GraphQLList(BookType),
      resolver(parent){

      }
    }
  })
})

const AuthorsQuery = {
  // relates to the defined schema
  type: new GraphQLList(AuthorType),
  resolve(parent, args){
    // data fetching code
  }
}

module.exports = AuthorsQuery

const AuthorQuery = {
  // relates to the defined schema
  type: AuthorType,
  // they will pass an arg that is the book ID, which will be a string
  args: { id: { type: GraphQLID } },
  resolve(parent, args){
    // data fetching code
  }
}

module.exports = { AuthorType, AuthorQuery, AuthorsQuery }