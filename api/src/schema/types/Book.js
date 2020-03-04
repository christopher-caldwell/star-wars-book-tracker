const { GraphQLObjectType, GraphQLList, GraphQLInt, GraphQLBoolean, GraphQLString, GraphQLID } = require('graphql')
const db = require('../../db/')

module.exports = new GraphQLObjectType({
  name: 'Book',
  // is a function because reasons
  fields: () => ({
    // define the allowable params of your query
    id: { type: GraphQLID},
    title: { type: GraphQLString},
    pages: { type: GraphQLInt },
    era: { type: GraphQLString },
    series: { type: GraphQLString },
    image_name: { type: GraphQLString },
    release_date: { type: GraphQLString },
    is_legends: { type: GraphQLBoolean },
    num_of_ratings: { type: GraphQLInt },
    rating: { type: GraphQLInt },
    tags: { type: new GraphQLList(GraphQLString) },
    author: {
      type: AuthorType,
      async resolve(parent){
        const [ author ] = await db('author').where({
          id: parent.author
        })
        return author
      }
    }
  })
})

const AuthorType = require('./Author')