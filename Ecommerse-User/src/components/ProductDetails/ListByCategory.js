import React, {Component, Fragment} from 'react';
import {Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";

class ListByCategory extends Component {
    render() {

        let MyList = this.props.ProductData;
        const Category = this.props.Category;
        let MyView = MyList.map((ProductList,i)=> {

            if(ProductList.special_price == "NA"){
                return  <Col className="p-1" xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to={"/ProductDetails/"+ProductList.product_code}>
                    <Card className="image-box card w-100">
                        <img className="" src={ProductList.image} alt="shoes"/>
                        <Card.Body>
                            <p className="product-name-on-card">{ProductList.title}</p>
                            <p className="product-price-on-card">Price: {ProductList.price}</p>

                        </Card.Body>
                    </Card>
                    </Link>
                </Col>
            }else{
                return  <Col className="p-1" xl={2} lg={2} md={2} sm={4} xs={6}>
                    <Link to={"/ProductDetails/"+ProductList.product_code}>
                    <Card className="image-box card w-100">
                        <img className="" src={ProductList.image} alt="shoes"/>
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
                <Container className="text-center" fluid={true}>
                    <h1 className="p-5 TopSection">{Category}</h1>

                    <Row >

                        {MyView}

                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default ListByCategory;