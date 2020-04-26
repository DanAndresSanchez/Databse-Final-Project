import React, { Component } from 'react';
import ProductCard from "../components/ProductCard";
import { Row, Col , Container, FormGroup, Input, Label } from 'reactstrap';
import Navigation from "../components/Navigation";
import Searchbar from "../components/Searchbar";

class AllProductsPage extends Component{
    constructor(props) {
        super(props);
        this.state={
            products: []
        }
    }


    async componentDidMount() {
        const response = await fetch('http://localhost:3000/products');
        const data = await response.json();
        this.setState({products: data})
    }


    render() {
        console.log(this.state.products)
        if(!this.state.products.length)
            return(
                <div>
                    <Navigation/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    Got No Products
                </div>)
        else
            return(
                <div>
                    <Navigation/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <Container>
                        <Searchbar style={{padding: '20px'}}/>
                        <br/>

                        <Col>
                            <Row className={'justify-content-md-center'} xs={'3'}>
                                <Col>
                                    <form>
                                        <FormGroup>
                                            <Label for="exampleSelect1">Department</Label>
                                            <Input type="select" name="select" id="exampleSelect1" multiple>
                                                <option>-</option>
                                                <option>Baby</option>
                                                <option>Book</option>
                                                <option>Clothing</option>
                                                <option>Educational</option>
                                                <option>Electronics</option>
                                                <option>Food</option>
                                                <option>Gourmet</option>
                                                <option>Specialty</option>
                                                <option>Toys</option>
                                            </Input>
                                        </FormGroup>
                                        <FormGroup>
                                            <Label for="exampleSelect1">Rating</Label>
                                            <Input type="select" name="select" id="exampleSelect1" multiple>
                                                <option>-</option>
                                                <option>4 and up</option>
                                                <option>3 and up</option>
                                                <option>2 and up</option>
                                                <option>1 and up</option>
                                            </Input>
                                        </FormGroup>
                                        <FormGroup>
                                            <Label for="exampleSelect1">Price</Label>
                                            <Input type="select" name="select" id="exampleSelect1" multiple>
                                                <option>-</option>
                                                <option>Less than $10</option>
                                                <option>$10 - $50</option>
                                                <option>$50 - $100</option>
                                                <option>$100 - $500</option>
                                                <option>More than $500</option>
                                            </Input>
                                        </FormGroup>
                                    </form>
                                </Col>
                                {this.state.products.map(product => (
                                    <Col sm={{size: "3"}}>
                                        <ProductCard
                                            name={product.Pname}
                                            price={'$' + product.price}
                                            rating={product.rating}
                                            amount={product.amount}
                                            key={product.Pname}
                                            style={{padding: '1em'}}
                                        />
                                    </Col>
                                ))}
                            </Row>
                        </Col>

                    </Container>
                </div>
            )
    }
}

export default  AllProductsPage;