import React, {Component, Fragment} from 'react';
import {Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import FeaturedProductLoader from "../Placeholder/FeaturedProductLoader";


class FeaturedProducts extends Component {

    constructor() {
        super();
        this.state={
            ProductData:[],
            isLoading:"BetweenTwoSection",
            MainDiv:"d-none"
        }
    }

    componentDidMount() {
        axios
            .get(ApiURL.ProductListByRemark("FEATURED"))
            .then((response) => {

                this.setState({ ProductData: response.data, isLoading:'d-none', MainDiv:' '});

            })
            .catch((error) => {});
    }


    render() {
        let MyList = this.state.ProductData;
        let MyView = MyList.map((ProductList,i)=> {

            if(ProductList.special_price == "NA"){
                return  <Col className="p-1" xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to={"ProductDetails/"+ProductList.product_code}>
                    <Card className="image-box card w-100">
                        <img className="" src={ProductList.image} alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">{ProductList.title}</p>
                            <p className="product-price-on-card">Price: {ProductList.price}</p>

                        </Card.Body>
                    </Card>
                    </Link>
                </Col>
            }else{
                return  <Col className="p-1" xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to={"ProductDetails/"+ProductList.product_code}>
                    <Card className="image-box card w-100">
                        <img className="" src={ProductList.image} alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">{ProductList.title}</p>
                            <p className="product-price-on-card"><strike><span className="text-muted">Price: {ProductList.price}</span></strike> {ProductList.special_price}</p>
                        </Card.Body>
                    </Card>
                    </Link>
                </Col>

            }



        })

        return (
            <Fragment>
                <FeaturedProductLoader isLoading={this.state.isLoading}/>
                <div className={this.state.MainDiv}>
                    <Container className="text-center" fluid={true}>
                        <h5 className="section-title">FEATURED PRODUCTS</h5>
                        <p className="section-sub-title">Some of Exclusive Collection, you May Like</p>
                        <Row>

                            {MyView}

                        </Row>
                    </Container>
                </div>

            </Fragment>
        );
    }
}

export default FeaturedProducts;