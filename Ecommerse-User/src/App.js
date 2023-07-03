import React, {Component, Fragment} from 'react';
import {Container} from "react-bootstrap";
import 'bootstrap/dist/css/bootstrap.min.css';
import {HashRouter} from "react-router-dom";
import AppRoute from "./route/AppRoute";
import Chat from './components/Chat';

class App extends Component {
    render() {
        return (
            <Fragment>
                <Chat/>
              <HashRouter>
                  <AppRoute/>
              </HashRouter>

            </Fragment>
        );
    }
}

export default App;