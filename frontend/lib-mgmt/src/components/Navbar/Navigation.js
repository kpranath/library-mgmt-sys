import React, { Component } from 'react';
import { Link } from "react-router-dom";
import { Navbar, Nav, NavDropdown,Dropdown,DropdownButton } from "react-bootstrap";

export class Navigation extends Component {
  render() {
    return (
            <Nav className="navbar navbar-expand-lg navbar-blue">
            <div className="container">
              <Link to="/" className="navbar-brand">
                UB Library
              </Link>
              <button
                className="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span className="navbar-toggler-icon" />
              </button>
              <div className="collapse navbar-collapse" id="navbarNav">
                <ul className="navbar-nav ml-auto">
                  {(
                    <li className="nav-item">
                      <button
                        className="nav-link btn-logout"
                      >
                        Logout
                      </button>
                    </li>
                  )}
                </ul>
              </div>
            </div>
          </Nav>
    )
  }
}

export default Navigation