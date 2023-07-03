import React, { Component, Fragment } from "react";
import { Col, Container, Row } from "react-bootstrap";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import ReactHtmlParser, {
  processNodes,
  convertNodeToElement,
  htmlparser2,
} from "react-html-parser";
import SessionHelper from "../../SessionHelper/SessionHelper";


class About extends Component {
  constructor() {
    super();
    this.state = {
      about: "",
      loaderDiv:"",
      mainDiv:"d-none",
    };
  }

  componentDidMount() {
    let SiteInfoAbout = SessionHelper.getAboutSession();
    if (SiteInfoAbout == null) {
      axios
        .get(ApiURL.SendSiteInfo)
        .then((response) => {
          let StatusCode = response.status;
          if (StatusCode == 200) {
            let JSONDATA = response.data[0]["about"];
            this.setState({ about: JSONDATA,loaderDiv:"d-none", mainDiv:" " });
            SessionHelper.setAboutSession(JSONDATA)
          }else{
          
           toast.error("Something Went Wrong! Refress The Page")
        }
        })
        .catch((error) => {}); 
    } else {
      this.setState({ about: SiteInfoAbout,loaderDiv:"d-none", mainDiv:" "   });

    }
  }
  render() {
    return (
      <Fragment>
        <Container className="TopSection">
          <Row className="d-flex p-5  justify-content-center">
            <Col className={this.state.loaderDiv} md={10} lg={10} sm={12} xs={12}>
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

                  <div class="ph-col-12">
                  
                    <div class="ph-row">
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                      <div class="ph-col-12"></div>
                    </div>
                  </div>

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
            </Col>
            <Col className={this.state.mainDiv} md={10} lg={10} sm={12} xs={12}>
              <div className="card-body">
                {ReactHtmlParser(this.state.about)}
              </div>
            </Col>
          </Row>
        </Container>
      </Fragment>
    );
  }
}

export default About;
