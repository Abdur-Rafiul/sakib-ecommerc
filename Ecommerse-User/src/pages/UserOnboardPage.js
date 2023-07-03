import React, {Component, Fragment} from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDeskTop from "../components/common/FooterDeskTop";
import UserOnboard from "../components/common/UserOnboard";

class UserOnboardPage extends Component {
    componentDidMount() {
        window.scroll(0,0);
    }
    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDeskTop />

                </div>

                <div className="Mobile">
                    <NavMenuMobile />

                </div>

             <UserOnboard/>
        <div className="">
                <FooterDeskTop/>
        </div>
            </Fragment>
        );
    }
}

export default UserOnboardPage;