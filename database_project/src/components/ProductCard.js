import React from 'react';
import { Card, CardBody, CardTitle, CardImg} from "reactstrap";
import StarRating from "./StarRating";
import Button from "reactstrap/es/Button";

const ProductCard = ({name, price, rating, image, amount}) => {
    return(
        <Card  style={{width: '18rem'}}>
            <CardImg top src="https://images.unsplash.com/photo-1586695691862-bed442d489f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1349&q=80" alt="..."/>
            <CardBody>
                <a href="#pablo" onClick={e => e.preventDefault()}>
                    <div className="motto text-center">
                        <CardTitle tag="h3">{ name }</CardTitle>
                    </div>
                </a>

                <StarRating rating={rating} amount={amount} name={name}/>
                <h5 className="card-description text-center">{ price }</h5>
                <div className={'motto text-center'}>
                    <Button>Buy Now</Button>
                </div>
            </CardBody>

        </Card>
    );
}

export default ProductCard;