import React, {Component, Fragment} from 'react';
import {Button, Card, Col, Container, Form, Row} from "react-bootstrap";
import {Link, Redirect} from "react-router-dom";
import cogoToast from "cogo-toast";
import axios from "axios";
import ApiURL from ".././../api/AppURL";
export default class Register extends Component {

    constructor() {
        super();
        this.state={
            RegisterData:[],
            Name:"",
            Email:"",
            Password:"",
            Confirm_Password:"",
            RedirectStatus:false,
          
        }
        this.NameChange = this.NameChange.bind(this)
        this.EmailChange = this.EmailChange.bind(this)
        this.PasswordChange = this.PasswordChange.bind(this)
        this.ConfirmPasswordChange = this.ConfirmPasswordChange.bind(this)
        this.SubmitOnClick = this.SubmitOnClick.bind(this)
       
    }
    pageRedirect=()=>{
       // alert(1)
        if(this.state.RedirectStatus===true){
            return(
                <Redirect to="/onboard"/>
            )
        }
    }
    NameChange(event){
      let Name = event.target.value;
      this.setState({Name:Name});
    }
    EmailChange(event){
      let Email = event.target.value;
      this.setState({Email:Email});
    }
    PasswordChange(event){
      let Password = event.target.value;
      this.setState({Password:Password});
    }
    ConfirmPasswordChange(event){
      let Confirm_Password = event.target.value;
      this.setState({Confirm_Password:Confirm_Password});
    }

  
    SubmitOnClick(){

        // let SearchKey = this.state.SearchKey;
        // if(SearchKey.length>=2){
        //     this.setState({SearchRedirectStatus:true})
        // }
//  alert(this.state.Name+this.state.Email+this.state.Password+this.state.Confirm_Password);
        axios
            .post(ApiURL.BaseUrl+"register",{
                name:this.state.Name,
                email:this.state.Email,
                password:this.state.Password,
                password_confirmation:this.state.Confirm_Password,
            })
            .then((response) => {

                if(response.status===200){
            
                //alert("Successfully Registered! Now, Login!")
                cogoToast.success(response.data.data.message,{position:'bottom-center'});

                this.setState({RedirectStatus:true})
                
            }else if(response.status===422){
            
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
                            <h4 className="section-title">User Registration</h4>
                                <h6 className="section-sub-title pb-3"></h6>
                                <Form.Group className="mb-3" controlId="formBasicEmail">

                           
                                    <Form.Control onChange={this.NameChange} className='mb-2' type="text" placeholder="Enter Your Name" />
                                    <Form.Control onChange={this.EmailChange} className='mb-2' type="text" placeholder="Enter Your Email" />
                                    <Form.Control onChange={this.PasswordChange} className='mb-2' type="text" placeholder="Enter Your Password" />
                                    <Form.Control onChange={this.ConfirmPasswordChange} type="text" placeholder="Enter Your Confirm Password" />
                                    
                                </Form.Group>
                                <Form.Group>
                                <Button onClick={this.SubmitOnClick} className="btn-block pure-material-button-contained site-btn me-2">Submit</Button>
                                <Link to="/onboard"  className="h4 btn">Login</Link>
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
    )
  }
}
