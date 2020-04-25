import React, {Component} from 'react';
import { FaStar, FaStarHalf } from 'react-icons/fa'
import { Row, Col } from 'reactstrap';

class StarRating extends Component{
    constructor(props) {
        super(props);
        this.state = {
            rating: props.rating,
            amount: props.amount,
            name: props.name
        }
    }
    render(){
        const amount = this.state.rating;
        let star;
        if( Number.isInteger(amount) ){
            star = <div>
                        <Row className="justify-content-md-center">
                            <Col xs="auto">
                                {[...Array(amount )].map(thing =>{
                                    return <FaStar color={"#fcc107"}/>
                                })}
                            </Col>
                            <Col xs="auto">
                                <p>({this.state.amount})</p>
                            </Col>
                        </Row>
                   </div>
        }
        else {
            star = <div className={"inline"}>
                        <Row className="justify-content-md-center">
                            <Col xs="auto">
                                {[...Array(Math.floor(amount ))].map(thing =>{
                                    return <FaStar color={"#fcc107"}/>
                                })}
                                <FaStarHalf  color={"#fcc107"}/>
                            </Col>
                            <Col xs="auto">
                                <p>({this.props.amount})</p>
                            </Col>
                        </Row>
                  </div>
        }


        return <div key={this.props.name}>{star}</div>
    }
}

export default StarRating;