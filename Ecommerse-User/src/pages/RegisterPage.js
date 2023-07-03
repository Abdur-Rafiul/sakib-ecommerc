
import React, { Component, Fragment } from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import FooterDeskTop from "../components/common/FooterDeskTop";
import Register from "../components/common/Register";
export default class RegisterPage extends Component {
  render() {
    return (
      <Fragment>
        <div className="Desktop">
          <NavMenuDeskTop />

        </div>

      

        <Register />
        <div className="">
          <FooterDeskTop />
        </div>
      </Fragment>
    )
  }
}
