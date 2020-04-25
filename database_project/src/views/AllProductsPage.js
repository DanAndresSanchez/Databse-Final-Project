import React, { Component } from 'react';
import ProductCard from "../components/ProductCard";
import { Row, Col , Container} from 'reactstrap';
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
                        <Row className={'justify-content-md-center'} xs={'3'}>
                            {this.state.products.map(product => (
                                <Col sm={{size: "auto"}}>
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
                    </Container>
                </div>
            )
    }
}

export default  AllProductsPage;