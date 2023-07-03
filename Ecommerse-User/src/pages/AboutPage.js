import React, {Component, Fragment} from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import About from "../components/Others/about";
import FooterDeskTop from "../components/common/FooterDeskTop";

class AboutPage extends Component {

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
                  <About/>
                </div>
                <div className="mt-5">

                </div>
                <FooterDeskTop/>
            </Fragment>
        );
    }
}

export default AboutPage;