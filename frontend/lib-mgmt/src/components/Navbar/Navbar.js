import { Link } from 'react-router-dom';

function Navbar() {
  return (
    <nav>
      <ul>
        <li>
          <Link to="/transactions">Book Transactions</Link>
        </li>
        <li>
          <Link to="/new-transaction">New Transaction</Link>
        </li>
      </ul>
    </nav>
  );
}

export default Navbar;