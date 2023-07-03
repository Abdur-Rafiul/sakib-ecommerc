import React, {Component, Fragment} from 'react';
import {Button, Card, Col, Container, Form, Row} from "react-bootstrap";
import {Link, Redirect} from "react-router-dom";
import cogoToast from "cogo-toast";
import axios from "axios";
import ApiURL from ".././../api/AppURL";
import SessionHelper from '../../SessionHelper/SessionHelper';
class UserOnboard extends Component {
    constructor() {
        super();
        this.state={
            LoginData:[],
            Email:"",
            Password:"",
            RedirectStatus:false,
            
          
        }
       
        this.EmailChange = this.EmailChange.bind(this)
        this.PasswordChange = this.PasswordChange.bind(this)
        this.SubmitOnClick = this.SubmitOnClick.bind(this)
       
    }
    pageRedirect=()=>{
       // alert(1)
        if(this.state.RedirectStatus===true){
            return(
                <Redirect to="/"/>
            )
            // if(SessionHelper.GetRedirectFromDetails()){
            //     return(
            //         <Redirect to={SessionHelper.GetRedirectFromDetails()}/>
            //     )
            // }else{
                
            // }
            
        }
    }

    EmailChange(event){
      let Email = event.target.value;
      this.setState({Email:Email});
    }
    PasswordChange(event){
      let Password = event.target.value;
      this.setState({Password:Password});
    }


  
    SubmitOnClick(){

        // let SearchKey = this.state.SearchKey;
        // if(SearchKey.length>=2){
        //     this.setState({SearchRedirectStatus:true})
        // }
//  alert(this.state.Name+this.state.Email+this.state.Password+this.state.Confirm_Password);
        axios
            .post(ApiURL.BaseUrl+"login",{
                email:this.state.Email,
                password:this.state.Password,
              
            })
            .then((response) => {

                if(response.status===200){
            
                //alert("Successfully Registered! Now, Login!")
               // cogoToast.success(response.data.data.message,{position:'bottom-center'});
                let token = response.data.data.token;
                SessionHelper.setUser(token);
                this.setState({RedirectStatus:true})
                
            }else {
            
                alert("The email has already has been taken")
            }

            })
            .catch((errors) => {
                //this.setState({RedirectStatus:true})
               // cogoToast.success(response.data.errors.name,{position:'bottom-center'});
               console.log(errors)
            });
    }
    render() {
        return (
            <Fragment>
                 <Container className="TopSection">
                     <Row className="d-flex p-5  justify-content-center">
                         <Col className="card mt-4" md={10} lg={10} sm={12} xs={12}>
                             <Row>
                                 <Col className="text-center d-flex justify-content-center" md={6} lg={6} sm={12} xs={12}>
                                     <Form className="onboardForm">
                                     <h4 className="section-title">USER SIGN IN</h4>
                                         <h6 className="section-sub-title pb-3"></h6>
                                         <Form.Group className="mb-3" controlId="formBasicEmail">

                                    
                                             <Form.Control onChange={this.EmailChange} className='mb-2' type="text" placeholder="Enter Your Email" />
                                             <Form.Control onChange={this.PasswordChange} type="text" placeholder="Enter Your Password" />
                                             
                                         </Form.Group>
                                         <Form.Group>
                                         <Button onClick={this.SubmitOnClick} className="btn-block pure-material-button-contained site-btn m-2">Sign IN</Button>
                                         <Link to="/register"  className="h4 btn">Register</Link>

                                         </Form.Group>
                                     </Form>
                                 </Col>

                             <Col className="Desktop p-0 m-0" md={6} lg={6} sm={12} xs={12}>
                                 <img className="onboardBanner w-75" src="/images/phone1.jpg"/>
                             </Col>
                             </Row>
                         </Col>
                     </Row>
                     {this.pageRedirect()}
                 </Container>
            </Fragment>
        );
    }
}

export default UserOnboard;