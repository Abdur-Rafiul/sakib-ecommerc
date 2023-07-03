import React, {Component, Fragment} from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import FooterDeskTop from "../components/common/FooterDeskTop";
import Policy from "../components/Others/Policy";

class PolicyPage extends Component {

    componentDidMount() {
        window.scroll(0,0);
    }

    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDeskTop />

                </div>

                <div className="mt-5">
                 <Policy/>
                </div>
                <div className="mt-5">

                </div>
                <FooterDeskTop/>
            </Fragment>
        );
    }
}

export default PolicyPage;