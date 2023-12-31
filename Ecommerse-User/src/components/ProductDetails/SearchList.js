import React, {Component, Fragment} from 'react';
import {Breadcrumb, Card, Col, Container, Row} from "react-bootstrap";
import {Link} from "react-router-dom";

class SearchList extends Component {
    render() {
        const MyList=this.props.ProductData;
        const SearchKey=this.props.SearchKey;

        const MyView=MyList.map((ProductList,i)=>{
            if(ProductList.special_price=="NA"){
                return <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6} >
                    <Link to={"/productDetails/"+ProductList.product_code}>
                        <Card className="card h-100 w-100  image-box ">
                            <img src={ProductList.image}/>
                            <Card.Body>
                                <h5 className="product-name-on-card">{ProductList.title }</h5>
                                <p className="product-price-on-card">Price: { ProductList.price}TK</p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            }
            else{

                return <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6} >
                    <Link to={"/productDetails/"+ProductList.product_code}>
                        <Card className="card h-100 w-100  image-box ">
                            <img src={ProductList.image}/>
                            <Card.Body>
                                <h5 className="product-name-on-card">{ProductList.title }</h5>
                                <p className="product-price-on-card">
                                    Price: <strike class="text-secondary">{ ProductList.price}TK</strike>  { ProductList.special_price}TK
                                </p>
                            </Card.Body>
                        </Card>
                    </Link>
                </Col>
            }

        })

        return (
            <Fragment>
                <Container className="text-center mt-5 py-5 TopSection" fluid={true}>
                    <Breadcrumb>
                        <Breadcrumb.Item> <Link to="/">Home</Link>    </Breadcrumb.Item>
                        <Breadcrumb.Item> <Link to={"/ProductListBySearch/"+SearchKey}>Search Result For: {SearchKey}</Link>    </Breadcrumb.Item>

                    </Breadcrumb>
                    <Row>
                        {MyView}
                    </Row>
                </Container>

            </Fragment>
        );
    }
}

export default SearchList;