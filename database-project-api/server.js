const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const knex = require('knex');

const database = knex({
    client: 'mysql',
    connection: {
        host: 'localhost',
        user: 'root',
        password: 'password',
        database: 'final_project'
    }
})

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
    database.select('*').from('customer')
        .where('customerID','=', req.body.customerID)
        .then(data => {
            return database.select('*').from('customer')
                .where('Fname', '=', req.body.Fname, 'and', 'Lname', '=', req.body.Lname)
                .then(user =>{
                    console.log(user)
                    res.json(user[0])
                })
                .catch(err => res.status(400).json('Unable to get user'))
        })
        .catch(err => res.status(400).json('Wrong Credentials'))
})

app.post('/register-page', (req, res) =>{
    const {Fname, Lname, caddress, ccity, cstate, czip} = req.body;
    database('customer')
        .insert({
        "Fname": Fname,
        "Lname": Lname,
        "caddress": caddress,
        "ccity": ccity,
        "cstate": cstate,
        "czip": czip
    })
        .then(user => {
            res.json(user[0]);
        })
        .catch(err => res.status(400).json('Unable to register.'))
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