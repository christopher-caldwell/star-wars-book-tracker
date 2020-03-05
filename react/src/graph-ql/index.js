import ApolloClient from 'apollo-boost'

const uri = process.env.REACT_APP_API_URL + '/graphql'

export default new ApolloClient({
  uri
})