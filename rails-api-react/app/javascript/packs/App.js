import React, { Component } from 'react';
import { Route, Switch } from 'react-router-dom';

import Dashboard from '../pages/Dashboard';
import About from '../pages/About';
import Navigation from '../components/Navigation/Navigation';
import Footer from '../components/Footer/Footer';
import Login from '../components/Form/Login';

class App extends Component {
  render() {
    return (
      <React.Fragment>
        <Navigation/>
          <Switch>
            <Route exact path="/" component={Dashboard}/>
            <Route exact path="/about" component={About}/>
            <Route exact path="/login" component={Login}/>
          </Switch>
        <Footer/>
      </React.Fragment>
    );
  }
}

export default App;
