const { GraphQLObjectType, GraphQLList, GraphQLString, GraphQLID } = require('graphql')
const db = require('../../db/')

// similar to tables, or groups of data. 
module.exports = new GraphQLObjectType({
  name: 'Author',
  // is a function because of scoping of BookType
  fields: () => {
    return {
      // define the allowable params of your query
      id: { type: GraphQLID},
      name: { type: GraphQLString},
      url: { type: GraphQLString},
      books: {
        type: GraphQLList(BookType),
        async resolve(parent){
          const books = await db('book').where({
            author: parent.id
          })
          return books
        }
      }
    }
  }
})


// import other types at the bottom of the file
const BookType = require('./Book')