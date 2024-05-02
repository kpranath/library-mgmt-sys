import { useState } from 'react';
import axios from 'axios';

function ReturnBook() {
  const [transactionId, setTransactionId] = useState('');
  const [status, setStatus] = useState('');

  const handleSubmit = (event) => {
    event.preventDefault();

    const transaction = {
      transactionId,
      status,
    };

    axios.put('/api/transactions', transaction).then(() => {
      setTransactionId('');
      setStatus('');
    });
  };

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Transaction ID:
        <input type="text" value={transactionId} onChange={(e) => setTransactionId(e.target.value)} />
      </label>
      <label>
        Status:
        <input type="text" value={status} onChange={(e) => setStatus(e.target.value)} />
      </label>
      <button type="submit">Return Book</button>
    </form>
  );
}

export default ReturnBook;