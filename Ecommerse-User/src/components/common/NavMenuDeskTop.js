import React, { Component, Fragment } from 'react';
import { Button, Col, Container, Nav, Navbar, Row } from "react-bootstrap";
import { Link, Redirect } from "react-router-dom";
import ApiURL from '../../api/AppURL';
import SessionHelper from '../../SessionHelper/SessionHelper';
import axios from "axios";
import Dropdown from 'react-bootstrap/Dropdown';
import DropdownButton from 'react-bootstrap/DropdownButton';
import cogoToast from "cogo-toast";
class NavMenuDeskTop extends Component {

    constructor() {
        super();
        this.state = {
            SearchKey: "",
            SearchRedirectStatus: false,
            userName: "Login",
            RedirectHome: false,
            userLoading: "",
            userLogin: "d-none",
            CartCount:0,
            FavCount:0,
            RedirectToLogin:false,     
           }
        this.SearchChange = this.SearchChange.bind(this)
        this.SearchOnClick = this.SearchOnClick.bind(this)
        this.SearchRedirect = this.SearchRedirect.bind(this)
    }
    signOut = () => {

        const token = SessionHelper.getUser()
        axios.delete(ApiURL.BaseUrl + "logout", { headers: { "Authorization": `Bearer ${token}` } })
            .then((response) => {

                if (response.status === 200) {

                    //let userName = response.data.data.user.name;
                    //console.log(response.data.data.user.name)

                    // SessionHelper.setUserName(userName)
                    cogoToast.success(response.data.data.message, { position: 'bottom-center' });
                     
                    this.setState({RedirectToLogin:true})
                }
            })
            .catch((errors) => {

                console.log(errors)
            });
        SessionHelper.removeUser();
        this.setState({ RedirectHome: true });
    }

    PageRedirectToLogin=()=>{
        if(this.state.RedirectToLogin===true){
            return <Redirect to="/onboard"/>
        }
    }

    SearchChange(event) {
        let SearchKey = event.target.value;
        this.setState({ SearchKey: SearchKey });
    }

    SearchOnClick() {

        let SearchKey = this.state.SearchKey;
        if (SearchKey.length >= 2) {
            this.setState({ SearchRedirectStatus: true })
        }
    }

    SearchRedirect() {
        if (this.state.SearchRedirectStatus === true) {

            return <Redirect to={"/ProductListBySearch/" + this.state.SearchKey} />

        }
    }
    RedirectHome = () => {
        if (this.state.RedirectHome === true) {
            return <Redirect to="/" />
        }
    }
    componentDidMount() {
    if(SessionHelper.getUserEmail()){
    
        axios.get(ApiURL.CartCount(SessionHelper.getUserEmail())).then((res)=>{
              this.setState({CartCount:res.data})
             // alert(res.data)
        }).catch((error)=>{
        
        
        })

        axios.get(ApiURL.favList1(SessionHelper.getUserEmail())).then((res)=>{
              this.setState({FavCount:res.data})
             // alert(res.data)
        }).catch((error)=>{
        
        
        })
    }
        let user = SessionHelper.getUserName();
        if (SessionHelper.getUser()) {

            const token = SessionHelper.getUser()
            //console.log(token)
            // const token = user.data.id; /*take only token and save in token variable*/
            axios.get(ApiURL.BaseUrl + "user", { headers: { "Authorization": `Bearer ${token}` } })
                .then((response) => {

                    if (response.status === 200) {

                        let userName = response.data.data.user.name;
                        let userEmail = response.data.data.user.email;
                        //console.log(response.data.data.user.name)

                        SessionHelper.setUserName(userName)
                        SessionHelper.setUserEmail(userEmail)
                        this.setState({ userLoading: "d-none" })
                        this.setState({ userLogin: "" })
                    }
                })
                .catch((errors) => {

                    console.log(errors)
                });

        } else {


        }
    }
    render() {

        if (SessionHelper.getUser() === null) {
            return (


                <Container fluid={true} className="p-3 fixed-top bg-light shadow-sm">

                    <Row>
                        <Col lg={4} md={4} sm={12} xs={12}>
                            <Link to="/"><img className="nav-logo" src="/images/logo.jpg" /></Link>
                            <Link to="/cart" className="cart-btn"><i className="fa fa-shopping-cart"></i>{this.state.CartCount} items</Link>
                        </Col>

                        <Col lg={4} md={4} sm={12} xs={12}>
                            <div className="input-group w-100">
                                <input onChange={this.SearchChange} type="text" className="form-control" aria-label="Text Input" />
                                <button onClick={this.SearchOnClick} type="button" className="btn site-btn"><i className="fa fa-search"></i></button>
                            </div>
                        </Col>

                        <Col lg={4} md={4} sm={12} xs={12}>
                            {/* <Link to="/favourite" className="btn"><i className="fa h4 fa-heart"></i><sup><span className="badge bg-danger">{this.state.FavCount}</span> </sup></Link> */}
                            <Link to="/notification" className="btn"><i className="fa h4 fa-bell"></i><sup><span className="badge bg-danger">{this.state.FavCount}</span> </sup></Link>
                            <Link to="/onboard" className="h4 btn btn-danger">Login</Link>

                        </Col>
                    </Row>
                    {this.SearchRedirect()}
                    {this.PageRedirectToLogin()}
                </Container>




            );

        } else {

            return (


                <Container fluid={true} className="p-3 fixed-top bg-light shadow-sm">

                    <Row>
                        <Col lg={4} md={4} sm={12} xs={12}>
                            <Link to="/"><img className="nav-logo" src="/images/logo.jpg" /></Link>
                            <Link to="/cart" className="cart-btn"><i className="fa fa-shopping-cart"></i>{this.state.CartCount} items</Link>
                        </Col>

                        <Col lg={4} md={4} sm={12} xs={12}>
                            <div className="input-group w-100">
                                <input onChange={this.SearchChange} type="text" className="form-control" aria-label="Text Input" />
                                <button onClick={this.SearchOnClick} type="button" className="btn site-btn"><i className="fa fa-search"></i></button>
                            </div>
                        </Col>

                        <Col lg={4} md={4} sm={12} xs={12}>
                            {/* <Link to="/favourite" className="btn"><i className="fa h4 fa-heart"></i><sup><span className="badge bg-danger">{this.state.FavCount}</span> </sup></Link> */}
                            <Link to="/notification" className="btn"><i className="fa h4 fa-bell"></i><sup><span className="badge bg-danger">{this.state.FavCount}</span> </sup></Link>
                            <span className={this.state.userLoading}>
                                <button class="btn btn-danger" type="button" >
                                    <span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>
                                    Loading...
                                </button>
                            </span>
                            <span className={this.state.userLogin}>
                                <Dropdown className="d-inline mx-2" autoClose="outside">
                                    <Dropdown.Toggle id="dropdown-autoclose-outside" className='btn btn-danger me-5'>
                                        {SessionHelper.getUserName()}
                                    </Dropdown.Toggle>

                                    <Dropdown.Menu>
                                        <Link className="btn"  to="/order">Order List</Link><br/>
                                        {/* <Link className="btn" to="/favourite">Favorite List</Link> */}
                                        <Dropdown.Item onClick={this.signOut}>SIGN OUT</Dropdown.Item>
                                    </Dropdown.Menu>
                                </Dropdown>
                            </span>

                        </Col>
                    </Row>
                    {this.SearchRedirect()}
                    {this.RedirectHome()}
                    {this.PageRedirectToLogin()}
                </Container>




            );
        }


    }
}

export default NavMenuDeskTop;