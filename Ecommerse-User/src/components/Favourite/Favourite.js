import React, {Component, Fragment} from 'react';
import {Breadcrumb, Button, Card, Col, Container, Row} from "react-bootstrap";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import {Link} from "react-router-dom";
import ProductListLoader from "../Placeholder/ProductListLoader"
import {Redirect} from "react-router-dom";
import cogoToast from "cogo-toast";
import SessionHelper from '../../SessionHelper/SessionHelper';

class Favourite extends Component {
    constructor() {
        super();
        this.state={
            ProductData:[],
            isLoading:"",
            MainDiv:"d-none",
            PageRefreshStatus:false,
        }
    }

    componentDidMount() {
        window.scroll(0,0)
        axios.get(ApiURL.favList(SessionHelper.getUserEmail())).then(response=> {
            this.setState({ProductData:response.data,isLoading:"d-none",MainDiv:" "})
        })
    }

    removeItem=(event)=>{
      let code=  event.target.getAttribute('data-code');
      let email=SessionHelper.getUserEmail();

      axios.get(ApiURL.removeFavItem(email,code)).then((res)=>{
          if(res.data===1){
              cogoToast.success("Item Removed",{position:'bottom-center'})
              this.setState({PageRefreshStatus:true})
          }
          else{
              cogoToast.error("Request Fail ! Try Again",{position:'bottom-center'})
          }
      }).catch((err)=>{
          cogoToast.error("Request Fail ! Try Again",{position:'bottom-center'})
      })


    }

    PageRefresh=()=>{
        if(this.state.PageRefreshStatus===true){
            let URL=window.location;
            return(
                <Redirect to={URL}/>
            )
        }
    }



    render() {

        const MyList=this.state.ProductData;
        const MyView=MyList.map((ProductList,i)=>{
                return <Col className="p-1" key={1} xl={2} lg={2} md={2} sm={4} xs={6} >
                        <Card className="card  h-100 w-100  image-box ">
                            <img src={ProductList.image} alt=""/>
                            <Card.Body>
                                <h5 className="product-name-on-card">{(ProductList.title).substring(0,50) }</h5>
                                <Button onClick={this.removeItem} data-code={ProductList.product_code} className="btn btn-sm site-btn me-2">Remove</Button>
                                <Link  to={"/productDetails/"+ProductList.product_code} className="btn btn-sm ml-1 site-btn">Details</Link>
                            </Card.Body>
                        </Card>
                </Col>

        })


        return (
            <Fragment>
                <ProductListLoader isLoading={this.state.isLoading}/>
                    <Container className={this.state.MainDiv +" animated slideInDown TopSection"} fluid={true}>
                        <Row>
                            <Breadcrumb className="shadow-sm w-100 bg-white">
                                <Breadcrumb.Item> <Link to="/">Home</Link>    </Breadcrumb.Item>
                                <Breadcrumb.Item> <Link to={"/favourite/"}>Favourite</Link></Breadcrumb.Item>
                            </Breadcrumb>
                        </Row>

                        <Row  >
                            {MyView}
                        </Row>
                    </Container>
                {this.PageRefresh()}
            </Fragment>
        );
    }
}

export default Favourite;