import React, {Component, Fragment} from 'react';
import {FaArrowUp} from "react-icons/all";

class ScrollTopButton extends Component {
    render() {
        return (
            <Fragment>
                <FaArrowUp className="top-btn--icon" />
            </Fragment>
        );
    }
}

export default ScrollTopButton;