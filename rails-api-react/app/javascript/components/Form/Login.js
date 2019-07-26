import React, { Component } from 'react';

class Login extends Component {
  render() {
    return (
        <form className="login-form">
          <div className="login-form__card">
            <h3 className="text-center font-weight__bold">ចូលប្រើប្រាស់</h3>
            <div className="login-form__control">
              <label htmlFor="email">អីុម៉ែល</label>
              <input type="email" id="email" />
            </div>
            <div className="login-form__control">
              <label htmlFor="password">លេខសម្ងាត់</label>
              <input type="password" id="password" />
            </div>
            <div className="login-form__actions">
              <button type="button">ចុះឈ្មោះ</button>
              <button type="submit">ចូល</button>
            </div>
          </div>
      </form>
    )
  }
}

export default Login;
