import React, {Component, Fragment} from 'react';
import {Button, Col, Container, Row} from "react-bootstrap";
import MegaMenu from "../home/MegaMenu";
import MegaMenuMobile from "../home/MegaMenuMobile";

class NavMenuMobile extends Component {


    constructor() {
        super();
        this.state={
            SideNavState: 'sideNavClose',
            ContentOverState: 'ContentOverlayClose'
        }
    }

    MenuBarClickHandler=()=>{
        this.SideNavOpenClose();
    }

    ContentOverlyClickHandler=()=>{
        this.SideNavOpenClose();
    }

    SideNavOpenClose=()=>{
        let sideNavState = this.state.SideNavState;
        let ContentOverState = this.state.ContentOverState;

        if(sideNavState === "sideNavOpen"){
            this.setState({SideNavState: "sideNavClose",ContentOverState: "ContentOverlayClose"})
        }else{
            this.setState({SideNavState: "sideNavOpen",ContentOverState:"ContentOverlayOpen"})
        }

    }
    render() {
        return (
            <Fragment>
                <Container fluid={true} className="p-3 mb-5 fixed-top bg-light shadow-sm">
                    <Row>
                        <Col className="p-3" lg={12} md={12} sm={12} xs={12}>

                            <Button onClick={this.MenuBarClickHandler} className="btn-danger"><i className="fa fa-bars "></i></Button>

                            <a href="btn"><img className="nav-logo" src="/images/logo.jpg"/></a>
                            <Button className="cart-btn"><i className="fa fa-shopping-cart"></i>4 items</Button>

                        </Col>



                    </Row>
                </Container>
                <span>
                <div  className={this.state.SideNavState}>
                    <MegaMenuMobile/>

                </div>
                </span>

                <div onClick={this.ContentOverlyClickHandler} className={this.state.ContentOverState}>

                </div>

            </Fragment>
        );
    }
}

export default NavMenuMobile;