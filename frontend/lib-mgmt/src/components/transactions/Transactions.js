import React from 'react';
import Navigation from '../Navbar/Navigation';

class Transactions extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      borrowedBooks: []
    };
  }

  componentDidMount() {
    fetch('/api/borrowed-books')
      .then(response => response.json())
.then(data => this.setState({ borrowedBooks: data }));
  }

  handleReturnBook = (bookId) => {
    // Make a request to your Node.js API endpoint to initiate the return process
    fetch(`/api/books/${bookId}/return`)
      .then(response => response.json())
      .then(data => {
        // Update the borrowed books data in the state
        const updatedBorrowedBooks = this.state.borrowedBooks.filter(book => book.id !== bookId);
        this.setState({ borrowedBooks: updatedBorrowedBooks });
      });
  }

  render() {
    return (
      <div>
        <Navigation/>
        <h1>Transactions</h1>
        <ul>
          {this.state.borrowedBooks.map((book) => (
            <li key={book.id}>
              <h2>{book.title}</h2>
              <p>Author: {book.author}</p>
              <p>Borrowed By: {book.borrowerName}</p>
              <button onClick={() => this.handleReturnBook(book.id)}>
                Return Book
              </button>
            </li>
          ))}
        </ul>
      </div>
    );
  }
}

export default Transactions;