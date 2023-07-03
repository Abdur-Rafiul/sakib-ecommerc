import React, {Component, Fragment} from 'react';
import {Container} from "react-bootstrap";

class MegaMenuMobile extends Component {


    MenuItemClick=(event)=>{
        event.target.classList.toggle('active');
        let panel = event.target.nextElementSibling;
        if (panel.style.maxHeight){
            panel.style.maxHeight = null;
        }else{
            panel.style.maxHeight = panel.scrollHeight+ "px";
        }
    }



    render() {
        return (
            <Fragment>
                <Container className="" fluid={true}>


                    <div className="accordionMenuDivMobile">
                        <div className="accordionMenuDivInsideMobile">
                            <button onClick={this.MenuItemClick} className="accordionMobile"><img className="accordionMenuIconMobile" src="/images/boss.png"/>  Men's Clothing</button>
                            <div className="panelMobile">
                                <ul>
                                    <li><a href="#" className="accordionItemMobile">Man1 Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                </ul>
                            </div>

                            <button onClick={this.MenuItemClick} className="accordionMobile"><img className="accordionMenuIconMobile" src="/images/boss.png"/>  Men's Clothing</button>
                            <div className="panelMobile">
                                <ul>
                                    <li><a href="#" className="accordionItemMobile">Man1 Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                </ul>
                            </div>

                            <button onClick={this.MenuItemClick} className="accordionMobile"><img className="accordionMenuIconMobile" src="/images/boss.png"/>  Men's Clothing</button>
                            <div className="panelMobile">
                                <ul>
                                    <li><a href="#" className="accordionItemMobile">Man1 Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                </ul>
                            </div>

                            <button onClick={this.MenuItemClick} className="accordionMobile"><img className="accordionMenuIconMobile" src="/images/boss.png"/>  Men's Clothing</button>
                            <div className="panelMobile">
                                <ul>
                                    <li><a href="#" className="accordionItemMobile">Man1 Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                </ul>
                            </div>

                            <button onClick={this.MenuItemClick} className="accordionMobile"><img className="accordionMenuIconMobile" src="/images/boss.png"/>  Men's Clothing</button>
                            <div className="panelMobile">
                                <ul>
                                    <li><a href="#" className="accordionItemMobile">Man1 Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                    <li><a href="#" className="accordionItemMobile">Man Shirt</a></li>
                                </ul>
                            </div>

                    </div>
                    </div>
                </Container>
            </Fragment>
        );
    }
}

export default MegaMenuMobile;