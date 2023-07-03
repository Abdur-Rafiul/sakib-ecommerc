import React, {Component, Fragment} from 'react';
import {Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import SpecialCollectionPlaceholder from "../Placeholder/SpecialCollectionPlaceholder";
import {Link} from "react-router-dom";

class Collection extends Component {
    constructor() {
        super();
        this.state={
            ProductData:[],
            isLoading:"TopSection",
            MainDiv:"d-none"
        }
    }

    componentDidMount() {
        axios
            .get(ApiURL.ProductListByRemark("COLLECTION"))
            .then((response) => {

                this.setState({ ProductData: response.data,isLoading:'d-none',MainDiv:' '});

            })
            .catch((error) => {});
    }

    render() {
        let MyList = this.state.ProductData;
        let MyView = MyList.map((ProductList,i)=> {

            if(ProductList.special_price == "NA"){
                return  <Col className="p-2" xl={4} lg={4} md={4} sm={6} xs={6}>
                    <Link to={"ProductDetails/"+ProductList.product_code}>
                    <Card className="image-box card w-75">
                        <img className="" src={ProductList.image} alt=""/>
                        <Card.Body>
                            <p className="product-name-on-card">{ProductList.title}</p>
                            <p className="product-price-on-card">Price: {ProductList.price}</p>

                        </Card.Body>
                    </Card>
                    </Link>
                </Col>
            }else{
                return  <Col className="p-1" xl={3} lg={3} md={3} sm={6} xs={6}>
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
                <SpecialCollectionPlaceholder isLoading={this.state.isLoading}/>
                <div className={this.state.MainDiv}>
                    <Container className="text-center card1 p-3 mb-5" fluid={true}>

                        <h5 className="section-title">SPECIAL COLLECTIONS</h5>
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

export default Collection;