import { useEffect, useState } from 'react';
import axios from 'axios';
import { useTable } from 'react-table';

function Transactions() {
  const [transactions, setTransactions] = useState([]);

  useEffect(() => {
    axios.get('/api/transactions').then((response) => {
      setTransactions(response.data);
    });
  }, []);

  const columns = [
    {
      Header: 'Title',
      accessor: 'book.title',
    },
    {
      Header: 'Author',
      accessor: 'book.author',
    },
    {
      Header: 'Transaction Date',
      accessor: 'transactionDate',
    },
  ];

  const {
    getTableProps,
    getTableBodyProps,
    headerGroups,
    rows,
    prepareRow,
  } = useTable({ columns, data: transactions });

  return (
    <table {...getTableProps()}>
      <thead>
        {headerGroups.map((headerGroup) => (
          <tr {...headerGroup.getHeaderGroupProps()}>
            {headerGroup.headers.map((column) => (
              <th {...column.getHeaderProps()}>{column.render('Header')}</th>
            ))}
          </tr>
        ))}
      </thead>
      <tbody {...getTableBodyProps()}>
        {rows.map((row) => {
          prepareRow(row);
          return (
            <tr {...row.getRowProps()}>
              {row.cells.map((cell) => (
                <td {...cell.getCellProps()}>{cell.render('Cell')}</td>
              ))}
            </tr>
          );
        })}
      </tbody>
    </table>
  );
}

export default Transactions;