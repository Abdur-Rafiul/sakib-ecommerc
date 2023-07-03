import React, {Component, Fragment} from 'react';
import {Col, Container, Row} from "react-bootstrap";
import MegaMenu from "./MegaMenu";
import SliderHome from "./SliderHome";
import axios from "axios";
import ApiURL from "../../api/AppURL";
import SliderLoader from "../Placeholder/SliderLoader";


class HomeTop extends Component {

    constructor(props) {
        super();
        this.state={
            MenuData:[],
            SliderData:[],
            isLoading:"TopSection",
            MainDiv:"d-none"
        }
    }

    componentDidMount() {

        axios
            .get(ApiURL.SendCategoryDetails)
            .then((response) => {

                    this.setState({ MenuData: response.data});

            })
            .catch((error) => {});

        //Slider Info

        axios.get(ApiURL.SendSliderInfo).then(response=>{
            this.setState({SliderData:response.data,isLoading:'d-none',MainDiv:' '})
        }).catch(error=>{

        })
    }



    render() {
        return (
            <Fragment>
                <SliderLoader isLoading={this.state.isLoading} />
                <div className={this.state.MainDiv}>

                </div>
                <Container fluid={true} className="mt-5">
                    <Row>
                        <Col lg={3} md={3} sm={12}>
                            <MegaMenu  data={this.state.MenuData}/>
                        </Col>

                        <Col lg={9} md={9} sm={12}>
                             <SliderHome data={this.state.SliderData}/>
                        </Col>
                    </Row>
                </Container>
            </Fragment>
        );
    }
}

export default HomeTop;