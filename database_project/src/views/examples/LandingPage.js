/*!

=========================================================
* Paper Kit React - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-kit-react

* Copyright 2019 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/paper-kit-react/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
import React from "react";

// reactstrap components
import {Container, Row, Col} from "reactstrap";

// core components
import Navigation from "components/Navigation.js";
import LandingPageHeader from "components/Headers/LandingPageHeader.js";
import DemoFooter from "components/Footers/DemoFooter.js";
import ProductCard from "../../components/ProductCard";
import Searchbar from "../../components/Searchbar";

function LandingPage() {
  document.documentElement.classList.remove("nav-open");
  React.useEffect(() => {
    document.body.classList.add("profile-page");
    return function cleanup() {
      document.body.classList.remove("profile-page");
    };
  });
  return (
    <>
      <Navigation />
      <LandingPageHeader />
      <div className="main">
        <div className="section text-center">
          <Container>
            <Searchbar/>
            <Row>
              <Col className="ml-auto mr-auto" md="8">
                <h2 className="title">Best Sellers</h2>
                <br />
              </Col>
            </Row>
            <br />
            <br />
            <Row className="justify-content-md-center">
              <Col sm={{size: 'auto'}}>
                <ProductCard name={"Microphone"} rating={9} price={"$99.99"} amount={47} key={1}/>
              </Col>
              <Col sm={{size: 'auto'}}>
                <ProductCard name={"Dog Plush"} rating={7} price={"$10.99"} amount={84} key={2}/>
              </Col>
              <Col sm={{size: 'auto'}}>
                <ProductCard name={"Seltzer"} rating={10} price={"$0.99"} amount={39} key={3}/>
              </Col>
              <Col sm={{size: 'auto'}}>
                <ProductCard name={"Calculator"} rating={8} price={"$149.99"} amount={22} key={4}/>
              </Col>
              <Col sm={{size: 'auto'}}>
                <ProductCard name={"Pencil Pack of 10"} rating={8} price={"$14.99"} amount={11} key={5}/>
              </Col>
            </Row>
          </Container>
        </div>
      </div>
      <DemoFooter />
    </>
  );
}

export default LandingPage;
