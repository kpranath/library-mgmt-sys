import { useState } from 'react';
import axios from 'axios';

function NewTransaction() {
  const [title, setTitle] = useState('');
  const [author, setAuthor] = useState('');
  const [transactionDate, setTransactionDate] = useState('');

  const handleSubmit = (event) => {
    event.preventDefault();

    const transaction = {
      book: {
        title,
        author,
      },
      transactionDate,
    };

    axios.post('/api/transactions', transaction).then(() => {
      setTitle('');
      setAuthor('');
      setTransactionDate('');
    });
  };

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Title:
        <input type="text" value={title} onChange={(e) => setTitle(e.target.value)} />
      </label>
      <label>
        Author:
        <input type="text" value={author} onChange={(e) => setAuthor(e.target.value)} />
      </label>
      <label>
        Transaction Date:
        <input type="date" value={transactionDate} onChange={(e) => setTransactionDate(e.target.value)} />
      </label>
      <button type="submit">Add Transaction</button>
    </form>
  );
}

export default NewTransaction;