import React, {Component, Fragment} from 'react';
import Slider from "react-slick";
import "slick-carousel/slick/slick-theme.css";
import "slick-carousel/slick/slick.css";
import {Container} from "react-bootstrap";
import {Link} from "react-router-dom";

class SliderHome extends Component {
    render() {

        const settings = {
            dots: true,
            infinite: true,
            speed: 500,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoPlay:true,
            autoplaySpeed:3000
        };

        const SliderData = this.props.data;
        const SliderView =  SliderData.map((SliderList, i)=>{

            return <div  className="container-fluid  overflow-hidden w-100 shadow-sm">
                <div style={{backgroundColor:SliderList.bg_color}} className="row card-body mt-5">
                    <div className="col-md-6 slider-title-div text-center mt-5 pt-5">
                        <h1 style={{color:SliderList.text_color}} className="slider-title mt-5">{SliderList.title}</h1>
                        <h1 style={{color:SliderList.text_color}} className="slider-sub-title  ">
                            {SliderList.sub_title}
                        </h1>
                        <Link to={"ProductDetails/"+SliderList.product_code} className="btn site-btn px-5">More Info</Link>
                    </div>
                        <div className="col-md-6 text-center">
                            <img className="sliderImg w-100 h-100 p-5" src= {SliderList.image} alt=""/>
                        </div>
                    X
                </div>

            </div>

        })


        return (






                <Slider  {...settings} >
                    {SliderView}

                </Slider>


        );
    }
}

export default SliderHome;