/*!

=========================================================
* Paper Kit React - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-kit-react

* Copyright 2019 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/paper-kit-react/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
import React, { Component } from 'react';
import LandingPage from "./views/examples/LandingPage";
import {BrowserRouter, Redirect, Route, Switch} from "react-router-dom";
import NucleoIcons from "./views/NucleoIcons";
import ProfilePage from "./views/examples/ProfilePage";
import RegisterPage from "./views/examples/RegisterPage";

class App extends Component {
    constructor() {
        super();
        this.state ={
            route: 'signin',
            isSignedIn: false
        }
    }

    componentDidMount() {
        fetch('http://localhost:3000')
            .then(response => response.json())
            .then(console.log)
    }

    render() {
        return (
            <BrowserRouter>
                <Switch>
                    <Route path="/" render={props => <LandingPage {...props} />} />
                    <Route
                        path="/nucleo-icons"
                        render={props => <NucleoIcons {...props} />}
                    />
                    <Route
                        path="/landing-page"
                        render={props => <LandingPage {...props} />}
                    />
                    <Route
                        path="/profile-page"
                        render={props => <ProfilePage {...props} />}
                    />
                    <Route
                        path="/register-page"
                        render={props => <RegisterPage {...props} />}
                    />
                    <Redirect to="/" />
                </Switch>
            </BrowserRouter>
        );
    }
}

export default App;