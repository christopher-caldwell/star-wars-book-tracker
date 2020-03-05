import React from 'react';
import { graphql } from 'react-apollo'
import { getBooksQuery } from 'graph-ql/queries/books'
import Typography from '@material-ui/core/Typography'

const renderBooks = data => {
  if(!data.loading){
    return data.books.map(book => (
      <Typography> Book Title: {book.title}</Typography>
    ))
  } else return ''
}


const BookList = () => {
  const books = renderBooks(data)
  return (
    <div>
      
    </div>
  );
};

export default graphql(getBooksQuery)(BookList);