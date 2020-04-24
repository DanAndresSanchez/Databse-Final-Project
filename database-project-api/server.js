const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(bodyParser.json());
app.use(cors());

const db = {
    users: [
        {
            customerID: '1',
            Fname: 'Allene',
            Lname: "Sanchez",
            caddress: "123 Streling Court",
            ccity: "Blender",
            cstate: "NJ",
            czip: "04521"
        },
        {
            customerID: '2',
            Fname: 'Marino',
            Lname: "Sanchez",
            caddress: "123 Streling Court",
            ccity: "Blender",
            cstate: "NJ",
            czip: "04521"
        },
        {
            customerID: '3',
            Fname: 'Twana',
            Lname: "Sanchez",
            caddress: "123 Streling Court",
            ccity: "Blender",
            cstate: "NJ",
            czip: "04521"
        },
    ]
}

app.get('/', (req,res) => {
    res.send(db.users);
})

app.listen(3000, () => {
    console.log('app is running on port 3000');
})

app.post('/signin', (req, res) => {
    if(req.body.customerID === db.users[0].customerID &&
        req.body.Fname === db.users[0].Fname)
        res.json('Success');
    else
        res.status(400).json('Error logging in');
    res.send('signing');
})

app.post('/register', (req, res) =>{
    const {Fname, Lname, caddress, ccity, cstate, czip} = req.body;
    db.users.push({
        "custoerID": toString(db.users.length + 1),
        "Fname": Fname,
        "Lname": Lname,
        "caddress": caddress,
        "ccity": ccity,
        "cstate": cstate,
        "czip": czip
    })
    res.json(db.users[db.users.length - 1]);
})

app.get('/profile/:id', (req, res) => {
    const { id } = req.params;
    db.users.forEach(user => {
        if(user.customerID === id)
            return res.json(user);
    })
    res.status(404).json('No customer found');
})
/*
    /landing  GET = top 5 rated products
    /login POST = success/fail
    /register
    /products GET = all products
    /item GET = all info for specific product
    /order POST = all items in cart as order
 */