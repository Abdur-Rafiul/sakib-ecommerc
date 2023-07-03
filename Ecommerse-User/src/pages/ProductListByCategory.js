import React, {Component, Fragment} from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import FooterDeskTop from "../components/common/FooterDeskTop";
import ListByCategory from "../components/ProductDetails/ListByCategory";
import axios from "axios";
import ApiURL from "../api/AppURL";
import ProductListLoader from "../components/Placeholder/ProductListLoader";

class ProductListByCategory extends Component {

    constructor({match}) {
        super();
        this.state={
            Category:match.params.Category,
            ProductData:[],
            isLoading:"TopSection",
            MainDiv:"d-none"

        }
    }
    componentDidMount() {
        window.scroll(0,0);

        //alert(this.state.Category)
        axios
            .get(ApiURL.ProductListByCategory(this.state.Category))
            .then((response) => {

                this.setState({ ProductData: response.data,isLoading:'d-none',MainDiv:' '});

            })
            .catch((error) => {});
    }


    render() {
        return (
            <Fragment>
                <div className="Desktop">
                    <NavMenuDeskTop />

                </div>

                <div className="mt-5">
                    <ProductListLoader isLoading={this.state.isLoading}/>
                    <div className={this.state.MainDiv}>
                        <ListByCategory Category={this.state.Category} ProductData={this.state.ProductData}/>
                    </div>


                </div>
                <div className="mt-5">

                </div>
                <FooterDeskTop/>
            </Fragment>
        );
    }
}

export default ProductListByCategory;