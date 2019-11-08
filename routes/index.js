const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    console.log('at the main route');

    let query = "SELECT ID, Name, Icon, Creator, QuickDesc FROM tbl_product";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        res.render('home', { favThing: result }); 
    })
})

router.get('/thing/:id', (req, res) => {
    let query = `SELECT * FROM tbl_product_specific WHERE prodID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.json(result[0]);
    })
})

module.exports = router;