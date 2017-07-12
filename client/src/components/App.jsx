import React, { Component } from 'react';
import ReactDOM from 'react-dom';

import "../stylesheets/login.scss"

class App extends Component {

  render() {
    return (
      <section className="login-form">
        <div className="container"><div className="clearbig" />
          <div className="row">
            <div className="text-center"> Enrollment System </div><br/>

          <div className="row">

            <form className="form-signin">
              <img src="/public/images/sm-logo.png" className="img-responsive divider"/>

              <div className="field clearsmall">
                <input type="email" className="form-control input-sm" placeholder="Email"/>
              </div>

              <div className="field">
                <input type="password" className="form-control" placeholder="Password" />
              </div>

              <div className="field">
                <div className="checkbox">
                  <label>
                    <input type="checkbox" /> Remember Me
                  </label>
                </div>
              </div>

              <div className="actions clearsmall">
                <button type="submit" className="btn btn-lg btn-primary btn-block">Log in</button>
              </div>
            </form>

          </div>

          <div className="row"><br/>
            <div className="text-center small-text">© Caleb 2017 | All rights reserved</div>
          </div>

          </div>
        </div>
      </section>
    );
  }

}

export default App;
