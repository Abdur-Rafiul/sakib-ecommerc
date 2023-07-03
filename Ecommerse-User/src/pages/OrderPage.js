import React, {Component, Fragment} from 'react';
import NavMenuDesktop from "../components/common/NavMenuDesktop";
import FooterDesktop from "../components/common/FooterDesktop";
import OrderForm from "../components/Order/OrderForm";

class OrderPage extends Component {

    componentDidMount() {
        window.scroll(0,0)
    }


    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDesktop/>
                </div>
               

                <OrderForm/>

                <div className="Desktop">
                    <FooterDesktop/>
                </div>
               

            </Fragment>
        );
    }
}

export default OrderPage;