import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter } from 'react-router-dom';
import App from './App';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.Fragment>
      <BrowserRouter>
        <App/>
      </BrowserRouter>
    </React.Fragment>,
    document.body.appendChild(document.createElement('div')),
  )
})
