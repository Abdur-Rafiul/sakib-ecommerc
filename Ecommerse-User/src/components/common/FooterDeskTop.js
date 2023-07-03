import React, {Component} from 'react';
import {Container, Col, Row} from "react-bootstrap";
import {Link} from "react-router-dom";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import ReactHtmlParser, {
  processNodes,
  convertNodeToElement,
  htmlparser2,
} from "react-html-parser";

class FooterDesktop extends Component {

    constructor() {
        super();
        this.state = {
          footerData: "",
          androidLink:"",
          iosLink:"",
          facebookLink:"",
          twitterLink:"",
          instagramLink:"",
          aboutCompany:"",
          deliveryNotice:"",
          address:"",
          loaderDiv:"",
          mainDiv:"d-none",
        };
      }
      componentDidMount() {
       let SiteInfoFooter = sessionStorage.getItem("SiteInfoFooter");
        if(SiteInfoFooter == null) {
          axios
            .get(ApiURL.SendSiteInfo)
            .then((response) => {
              let StatusCode = response.status;
              if (StatusCode == 200) {
                let JSONDATA = (response.data)[0];
            
                this.setState({ 
                  
                    androidLink:JSONDATA['android_app_link'],
                    iosLink:JSONDATA['ios_app_link'],
                    facebookLink:JSONDATA['facebook_link'],
                    twitterLink:JSONDATA['twitter_Link'],
                    instagramLink:JSONDATA['instagram_link'],
                    aboutCompany:JSONDATA['about_company'],
                    deliveryNotice:JSONDATA['delivery_notice'],
                    address:JSONDATA['address'],
                    loaderDiv:"d-none",
                    mainDiv:"",
                    
                    });
                sessionStorage.setItem("SiteInfoFooter", JSON.stringify(JSONDATA));
              }else{
              
               toast.error("Something Went Wrong! Refress The Page")
            }
            })
            .catch((error) => {});
        } else {
            let FooterDataJSON = JSON.parse(SiteInfoFooter);
          this.setState({ 
            androidLink:FooterDataJSON['android_app_link'],
            iosLink:FooterDataJSON['ios_app_link'],
            facebookLink:FooterDataJSON['facebook_link'],
            twitterLink:FooterDataJSON['twitter_Link'],
            instagramLink:FooterDataJSON['instagram_link'],
            aboutCompany:FooterDataJSON['about_company'],
            deliveryNotice:FooterDataJSON['delivery_notice'],
            address:FooterDataJSON['address'],
            loaderDiv:"d-none",
            mainDiv:"",
            
            });
    
        }
      }

    render() {
        return (
            <Container fluid={true} className="card p-0 footer">


              <div className={this.state.loaderDiv}>
              <div className="card-body">
                <div class="ph-item">
                  <div class="ph-col-12">
                  
                    <div class="ph-row">
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                    </div>
                  </div>
                  </div>
                  </div>
              </div>

              <div className={this.state.mainDiv}>
              <Container fluid={true} className="p-0">
            <div className="m-0 p-0 bg-white mt-5  shadow-sm">
                <div className="ms-5" id="google_translate_element"></div>
             
                <div className="p-0">
                    <Container>
                        <Row className="px-0 my-5">
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">ABOUT COMPANY</h5>
                                <p> {ReactHtmlParser(this.state.aboutCompany)} </p>
                                <h5 className="footer-menu-title">SOCIAL LINK</h5>
                                <a target="_blank" href={this.state.facebookLink}><i className="fab m-1 h4 fa-facebook"/></a>
                                <a target="_blank" href={this.state.instagramLink}><i className="fab m-1 h4 fa-instagram"/></a>
                                <a target="_blank" href={this.state.twitterLink}><i className="fab m-1 h4 fa-twitter"/></a>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">THE COMPANY</h5>
                                <Link to="/about" className="footer-link">About Us</Link><br/>
                                <Link to="/contact" className="footer-link">Contact Us</Link><br/>
                                <h5 className="footer-menu-title mt-3">OFFICE ADDRESS</h5>
                                <p> {ReactHtmlParser(this.state.address)} </p>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">MORE INFO</h5>
                                <Link to="/purchase" className="footer-link">How To Purchase</Link><br/>
                                <Link to="/policy" className="footer-link">Privacy Policy</Link><br/>
                                <Link  to="/refund" className="footer-link">Refund Policy</Link><br/>
                            </Col>
                            <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                                <h5 className="footer-menu-title">DOWNLOAD APP</h5>
                                <a target="_blank" href={this.state.iosLink}><img className="" src="/images/apple.png" alt="ios logo"/></a><br/>
                                <a target="_blank" href={this.state.androidLink}><img className="mt-2" src="/images/play-store.png" alt="android logo"/></a>
                            </Col>
                        </Row>
                    </Container>
                    <Container fluid={true} className="m-0 ps-0 pe-0 pt-3 pb-1 bg-dark ">
                        <Container className="">
                            <Row className="px-0 text-white">
                            <p> Fahima </p>
                            </Row>
                        </Container>
                    </Container>
                </div>
            </div>
            </Container>
              </div>

           

            </Container>

        );
    }
}
export default FooterDesktop;