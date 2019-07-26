import React, { Component } from 'react'
import User from '../components/User/User';

class Dashboard extends Component {
  state = {
    users: []
  }

  componentDidMount() {
    fetch("api/users")
    .then(res => res.json())
    .then(users => {
      this.setState({users})
    }).catch(err => console.log(err))
  }

  render() {
    const { users } = this.state;
    return (
      <div className="users container">
        {users.map(user => (
          <User
            key = {user.id}
            user = {user}
          />
        ))}
      </div>
    );
  }
}

export default Dashboard;
