import React, {Component, Fragment} from 'react';
import {Container,Row,Col,Card} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import ApiURL from "../../api/AppURL";

class SuggestedProduct extends Component {

    constructor() {
        super();
        this.state={
            ProductData:[],
        }
    }
    componentDidMount() {
      let subcategory =  this.props.subcategory;
      axios.get(ApiURL.SimilarProduct(subcategory))
          .then((response) => {

              this.setState({ ProductData: response.data,isLoading:'d-none',MainDiv:' '});

          })
          .catch((error) => {});
    }


    render() {

        let MyList = this.state.ProductData;
        if (MyList.length > 0) {
            let MyView = MyList.map((ProductList, i) => {

                if (ProductList.special_price == "NA") {
                    return <Col className="p-1" xl={2} lg={2} md={2} sm={4} xs={6}>
                        <Link to={"/ProductDetails/" + ProductList.product_code}>
                            <Card className="image-box card w-100">
                                <img className="" src={ProductList.image} alt=""/>
                                <Card.Body>
                                    <p className="product-name-on-card">{ProductList.title}</p>
                                    <p className="product-price-on-card">Price: {ProductList.price}</p>

                                </Card.Body>
                            </Card>
                        </Link>
                    </Col>
                } else {
                    return <Col className="p-1" xl={2} lg={2} md={2} sm={4} xs={6}>
                        <Link to={"/ProductDetails/" + ProductList.product_code}>
                            <Card className="image-box card w-100">
                                <img className="" src={ProductList.image} alt="shoes"/>
                                <Card.Body>
                                    <p className="product-name-on-card">{ProductList.title}</p>
                                    <p className="product-price-on-card"><strike><span
                                        className="text-muted">Price: {ProductList.price}</span></strike> {ProductList.special_price}
                                    </p>
                                </Card.Body>
                            </Card>
                        </Link>
                    </Col>

                }


            })


            return (
                <Fragment>
                    <Container fluid={true} className="text-center BetweenTwoSection">
                        <h4 className="section-title">YOU MAY LIKE</h4>
                        <h6 className="section-sub-title">Some Of Our Exclusive Collection, You May Like</h6>
                        <Row>
                            {MyView}
                        </Row>
                    </Container>
                </Fragment>
            );
        } else {
            return (
                <Fragment>
                    <Container fluid={true} className="text-center BetweenTwoSection">
                        <h4 className="section-title">YOU MAY LIKE</h4>
                        <h6 className="section-sub-title">Some Of Our Exclusive Collection, You May Like</h6>
                        <Row>

                        </Row>
                    </Container>
                </Fragment>
            );
        }
    }
}

export default SuggestedProduct;