import React, {Component, Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDeskTop";
import FooterDesktop from "../components/common/FooterDeskTop";
import OrderList from "../components/Order/OrderList";
import {Redirect} from "react-router-dom";

import sessionHelper from "../SessionHelper/SessionHelper";

class OrderListPage extends Component {

    constructor() {
        super();
        this.state={
            RedirectStatus:false,
        }
    }

    pageRedirect=()=>{
        if(this.state.RedirectStatus===true){
            return(
                <Redirect to="/onboard"/>
            )
        }
    }

    componentDidMount() {
        window.scroll(0,0)
        let email= sessionHelper.getUserEmail();
        if(email===null){
            this.setState({RedirectStatus:true})
        }
    }


    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDesktop/>
                </div>
              
                <OrderList/>

                <div className="Desktop">
                    <FooterDesktop/>
                </div>
             

                {this.pageRedirect()}
            </Fragment>
        );
    }
}

export default OrderListPage;