import React, {Component} from 'react';
import {Fragment} from "react";
import {Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import {Link} from "react-router-dom";
import CategoryPlaceholder from "../Placeholder/CategoryPlaceholder";

class Categories extends Component {

    constructor(props) {
        super();
        this.state={
            MenuData:[],
            isLoading:"TopSection",
            MainDiv:"d-none"
        }
    }

    componentDidMount() {

        axios
            .get(ApiURL.SendCategoryDetails)
            .then((response) => {

                this.setState({ MenuData: response.data,isLoading:'d-none',MainDiv:' '});

            })
            .catch((error) => {});
    }


    render() {
        let ParentList = this.state.MenuData;
        let MyView = ParentList.map((ParentList,i)=>{
            return <Col  key={i.toString()} className="p-0" xl={2} lg={2} md={3} sm={6} xs={6}>
               <Link to={"ProductListByCategory/"+ParentList.ParentCategoryName}>
                <Card className="w-100">
                    <img className="categories" src={ParentList.ParentCategoryImg} />
                    <Card.Body>
                        <p className="category-name">{ParentList.ParentCategoryName}</p>

                    </Card.Body>
                </Card>
               </Link>
            </Col>
        })
        return (
            <Fragment>
                <CategoryPlaceholder  isLoading={this.state.isLoading}/>
                <div className={this.state.MainDiv}>
                    <Container className="text-center p-2" fluid={true}>

                        <h5 className="section-title">CATEGORIES</h5>
                        <p className="section-sub-title">Some of Our Exclusive Collection, You May Like</p>
                        <Row>
                            {MyView}
                        </Row>
                    </Container>
                </div>

            </Fragment>
        );
    }
}

export default Categories;