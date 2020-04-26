import React, { Component } from 'react';
import axios from "axios";
import Navigation from "../components/Navigation";
import { Carousel, CarouselCaption, CarouselItem } from 'reactstrap';

class SingleProductPage extends Component{
    constructor(props) {
        super(props);
        this.state ={
            UPC: '',
            Pname: '',
            price: '',
            rating: '',
            amount: '',
            images: []
        }
    }

    async componentDidMount() {
        const response = await fetch('http://localhost:3000/products/'+ window.location.href.slice(-2));
        const data = await response.json();
        await this.setState({UPC: data.UPC})
        await this.setState({Pname: data.Pname})
        await this.setState({price: data.price})
        await this.setState({rating: data.rating})
        await this.setState({amount: data.amount})
        this.getPic();
    }

    async getPic(){
        const response = await axios.get('https://api.unsplash.com/search/photos', {
            params: { query: this.state.Pname },
            headers: {
                Authorization: 'Client-ID dtaTz_Cge-6eCOjxaNcyFR-H4-nX9fcSzkZfx8B6LfA'
            }
        });
        this.setState({images: response.data.results});
        console.log(this.state.images)
    }



    render(){
        const slides = this.state.images.map((pic) => {
        return (
            <CarouselItem key={pic.urls.regular}>
                <img src={pic.urls.regular} alt={pic.alt_descrption} />
                <CarouselCaption captionText={pic.description} captionHeader={pic.description} />
            </CarouselItem>
        );
    });
        return(
            <div>
                <Navigation/>
                <br/>
                <br/>
                <br/>
                <br/>
            </div>
        );
    }
}

export default SingleProductPage;