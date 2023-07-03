import React, {Component} from 'react';
import {Container, Col, Row} from "react-bootstrap";

class FooterMobile extends Component {
    constructor() {
        super();
        this.state= {
            footerData: "",
            androidLink: "",
            iosLink: "",
            facebookLink: "",
            twitterLink: "",
            instagramLink: "",
            address: "",
            aboutCompany: "",
            deliveryNotice: "",
            loaderDiv: "",
            mainDiv: "d-none",
        }
    }

    render() {
        return (
            <div className="m-0 bg-white pt-4 shadow-sm">
                <Container>
                    <Row>
                        <Col xs={12} sm={12} xm={12}>
                            <h5 className="footer-menu-title">OFFICE ADDRESS</h5>
                            <p>(this.state.address)</p>
                            <a target="_blank" href={this.state.facebookLink}><i className="fab h4 fa-facebook"/> </a>
                            <a target="_blank" href={this.state.instagramLink}><i className="fab mx-1 h4 fa-instagram"/> </a>
                            <a target="_blank" href={this.state.twitterLink}><i className="fab  h4 fa-twitter"/></a>
                        </Col>
                    </Row>
                </Container>
            </div>
        );
    }
}
export default FooterMobile;