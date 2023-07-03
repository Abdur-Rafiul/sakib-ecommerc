import React, {Component, Fragment} from 'react';
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import FooterDeskTop from "../components/common/FooterDeskTop";
import axios from "axios";
import ApiURL from "../api/AppURL";
import ListBySubCategory from "../components/ProductDetails/ListBySubCategory";
import ProductListLoader from "../components/Placeholder/ProductListLoader";

class ProductListBySubCategory extends Component {

    constructor({match}) {
        super();
        this.state={

            SubCategory:match.params.SubCategory,
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
            .get(ApiURL.ProductListBySubCategory(this.state.Category, this.state.SubCategory))
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

                    <ListBySubCategory SubCategory={this.state.SubCategory} ProductData={this.state.ProductData}/>
                    </div>
                </div>
                <div className="mt-5">

                </div>
                <FooterDeskTop/>
            </Fragment>
        );
    }
}

export default ProductListBySubCategory;