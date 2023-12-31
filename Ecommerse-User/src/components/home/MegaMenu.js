import React, {Component, Fragment} from 'react';
import {Container} from "react-bootstrap";
import {Link} from "react-router-dom";

class MegaMenu extends Component {





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

        let ParentList = this.props.data;
       let MyView = ParentList.map((ParentList,i)=>{
            return <div key={i.toString()}>

                <button onClick={this.MenuItemClick} className="accordion"><img className="accordionMenuIcon"  src={ParentList.ParentCategoryImg} />{ParentList.ParentCategoryName}</button>

                <div className="panel">
                    <ul>


                        {
                            (ParentList.Subcategory).map((ChildList, i)=>{
                                return <li><Link to={"ProductListBySubCategory"+"/"+ChildList.cat1_name+"/"+ChildList.cat2_name} className="accordionItem">{ChildList.cat2_name}</Link> </li>
                            })
                        }

                    </ul>
                </div>

            </div>
        })
        return (
            <Fragment>
                <Container fluid={true}>


            <div className="accordionMenuDiv">
                <div className="accordionMenuDivInside">

                    {MyView}

            </div>
            </div>
                </Container>
            </Fragment>
        );
    }
}

export default MegaMenu;