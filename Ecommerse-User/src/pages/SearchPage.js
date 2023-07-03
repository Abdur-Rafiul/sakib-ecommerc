import React, {Component, Fragment} from 'react';
import axios from "axios";
import ApiURL from "../api/AppURL";
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import NavMenuMobile from "../components/common/NavMenuMobile";
import ProductListLoader from "../components/Placeholder/ProductListLoader";

import FooterDeskTop from "../components/common/FooterDeskTop";
import SearchList from "../components/ProductDetails/SearchList";

class SearchPage extends Component {
    constructor({match}) {
        super();
        this.state={
            SearchKey:match.params.SearchKey,
            ProductData:[],
            isLoading:"TopSection",
            MainDiv:"d-none"

        }
    }

    componentDidMount() {
        window.scroll(0,0);

        //alert(this.state.Category)
        axios
            .get(ApiURL.ProductListBySearch(this.state.SearchKey))
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

                <div className="Mobile">
                    <NavMenuMobile />

                </div>


                <div className="mt-2 py-1">
                    <ProductListLoader isLoading={this.state.isLoading}/>
                    <div className={this.state.MainDiv}>
                        <SearchList SearchKey={this.state.SearchKey} ProductData={this.state.ProductData}/>
                    </div>


                </div>
                <div className="mt-5">

                </div>
                <FooterDeskTop/>
            </Fragment>
        );
    }
}

export default SearchPage;
