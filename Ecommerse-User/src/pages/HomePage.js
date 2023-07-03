import React, {Component, Fragment} from 'react';
import FeaturedProducts from "../components/home/FeaturedProducts";
import Categories from "../components/home/Categories";
import Collection from "../components/home/Collection";
import ProductSell from "../components/home/productSell";

import HomeTop from "../components/home/HomeTop";
import NavMenuDeskTop from "../components/common/NavMenuDeskTop";
import FooterDeskTop from "../components/common/FooterDeskTop";
import axios from 'axios';
import ApiURL from '../api/AppURL';

class HomePage extends Component {

    componentDidMount() {
        window.scroll(0,0);
        this.GetVisitorDetails();
    }

    GetVisitorDetails=()=>{
    
        axios.get(ApiURL.VisitorDetails).then().catch();
    }

    render() {
        return (
            <Fragment>


                <div className="Desktop">
                    <NavMenuDeskTop />
                    <HomeTop />
                </div>


                
                {/* <NewArrival /> */}
                <ProductSell/>
                <FeaturedProducts />
                <Collection />
                <Categories />

                <FooterDeskTop/>




            </Fragment>
        );
    }
}

export default HomePage;