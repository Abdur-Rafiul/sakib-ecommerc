import React, { Component, Fragment } from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import FooterDeskTop from "../components/common/FooterDeskTop";
import ProductDetails from "../components/ProductDetails/ProductDetails";
import axios from "axios";
import ApiURL from "../api/AppURL";

class ProductDetailsPage extends Component {

    constructor({ match }) {
        super();
        this.state = {
            code: match.params.code,
            ProductData: [],
            isLoading: "BetweenTwoSection",
            MainDiv: "d-none"
        }
    }
    componentDidMount() {
        window.scroll(0, 0);

        axios
            .get(ApiURL.ProductDetails(this.state.code))
            .then((response) => {

                this.setState({ ProductData: response.data, isLoading: 'd-none', MainDiv: ' ' });

            })
            .catch((error) => { });
    }

    render() {
        if (this.state.MainDiv == -"d-none") {
            return (
                <Fragment>
                    <div className="Desktop">
                        <NavMenuDeskTop />

                    </div>

                    <div className="mt-5">
                        {/*<ProductDetails ProductData={this.state.ProductData}/>*/}
                        {/*<SuggestedProduct/>*/}
                    </div>
                    <div className="mt-5">

                    </div>
                    <FooterDeskTop />
                </Fragment>
            );
        } else {

            return (
                <Fragment>
                    <div className="Desktop">
                        <NavMenuDeskTop />

                    </div>

                    <div className="Mobile">
                        <NavMenuMobile />

                    </div>


                    <div className="mt-5">
                        <ProductDetails ProductData={this.state.ProductData} />
                        {/*<SuggestedProduct/>*/}
                    </div>
                    <div className="mt-5">

                    </div>
                    <FooterDeskTop />
                </Fragment>
            );
        }

    }
}

export default ProductDetailsPage;