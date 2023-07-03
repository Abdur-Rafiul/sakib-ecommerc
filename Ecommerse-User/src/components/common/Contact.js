import axios from "axios";
import React, { Component, Fragment } from "react";
import { Button, Col, Container, Form, Row } from "react-bootstrap";
import ApiURL from "../../api/AppURL";
import Validation from "../../validation/validation";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
class Contact extends Component {
  constructor() {
    super();
    this.state = {
      name: "",
      mobile: "",
      message: "",
    };
  }

  nameOnChange = (event) => {
    var name1 = event.target.value;
    //alert(name1);
    this.setState({ name: name1 });
  };

  mobileOnChange = (event) => {
    let mobile = event.target.value;
    //alert(mobile);
    this.setState({ mobile: mobile });
  };

  messageOnChange = (event) => {
    let message = event.target.value;
    //alert(message);
    this.setState({ message: message });
  };

  onFormSubmit = (event) => {
    let name = this.state.name;
    let mobile = this.state.mobile;
    let message = this.state.message;
    if (name.length == 0) {
      toast.error("Name Required");
    } else if (mobile.length == 0) {
      toast.error("Mobile Number Required");
    } else if (!Validation.nameRegex.test(name)) {
      toast.error("Invalid Name");
    } else if (!Validation.phoneRegex.test(mobile)) {
      toast.error("Invalid Phone Number");
    } else if (message.length == 0) {
      toast.error("Please Enter Your Message");
    } else {
      let sendBtn = document.getElementById("sendBtn");
      sendBtn.innerHTML = "Sending...";
      let MyFormData = new FormData();
      MyFormData.append("name", name);
      MyFormData.append("mobile", mobile);
      MyFormData.append("message", message);
      let contactForm = document.getElementById("contactForm");
      axios
        .post(ApiURL.SendContactDetails, MyFormData)
        .then(function (response) {
          if (response.status == 200 && response.data == 1) {
            toast.success("Success");
            sendBtn.innerHTML = "Send";
            contactForm.reset();
          } else {
            toast.error("Error");
          }
        })
        .catch(function (error) {
          toast.error(error);
        });
    }
    event.preventDefault();
  };

  render() {
    return (
      <Fragment>
        <Container className="TopSection">
          <Row className="d-flex p-5  justify-content-center">
            <Col className="card mt-4" md={10} lg={10} sm={12} xs={12}>
              <Row>
                <Col
                  className="text-center d-flex justify-content-center"
                  md={6}
                  lg={6}
                  sm={12}
                  xs={12}
                >
                  <Form
                    id="contactForm"
                    onSubmit={this.onFormSubmit}
                    className="onboardForm"
                  >
                    <h4 className="section-title">CONTACT WITH US</h4>
                    <h6 className="section-sub-title pb-3">
                      Please Enter Your Mobile No & Go Next
                    </h6>
                    <Form.Group className="mb-3" controlId="formBasicName">
                      <Form.Control
                        onChange={this.nameOnChange}
                        type="text"
                        placeholder="Your Name"
                      />
                    </Form.Group>
                    <Form.Group className="mb-3" controlId="formBasicEmail">
                      <Form.Control
                        onChange={this.mobileOnChange}
                        type="number"
                        placeholder="Your Phone Number"
                      />
                    </Form.Group>
                    <Form.Group className="mb-3" controlId="formBasicEmail">
                      <Form.Control
                        onChange={this.messageOnChange}
                        type="text"
                        placeholder="Your Message"
                      />
                    </Form.Group>

                    <Button
                      type="submit"
                      id="sendBtn"
                      className="btn-block pure-material-button-contained site-btn"
                    >
                      Send
                    </Button>
                  </Form>
                </Col>

                <Col className="  p-0 m-0" md={6} lg={6} sm={12} xs={12}>
                  <iframe
                    className="GoogleMap"
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14594.128776004296!2d90.3132099!3d23.87074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c213b785c80f%3A0x160471c997db5233!2sManarat%20International%20University!5e0!3m2!1sen!2sbd!4v1663783908783!5m2!1sen!2sbd"
                    width="600"
                    height="450"
                    allowFullScreen=""
                    loading="lazy"
                    referrerPolicy="no-referrer-when-downgrade"
                  ></iframe>
                </Col>
              </Row>
            </Col>
          </Row>
          <ToastContainer />
        </Container>
      </Fragment>
    );
  }
}

export default Contact;
