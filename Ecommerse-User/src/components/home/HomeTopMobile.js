import React, {Component, Fragment} from 'react';
import {Col, Container, Row} from "react-bootstrap";
import MegaMenu from "./MegaMenu";
import SliderHome from "./SliderHome";

class HomeTopMobile extends Component {
    render() {
        return (
            <Fragment>
                <Container fluid={true} className="mt-5">
                    <Row>
                        <Col className="" lg={12} md={12} sm={12}>

                        </Col>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default HomeTopMobile;