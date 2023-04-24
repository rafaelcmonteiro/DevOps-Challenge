//onde esta o erro ? retorna o erro ESOCKETTIMEDOUT

const express = require('express');
const bodyParser = require('body-parser');
const request = require('request');
const path = require('path');

const app = express();
const router = express.Router();

const port = process.env.SERVICE_PORT || 3001;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

router.get('/', function (req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

router.post('/', function (req, res) {
    request.post({
        headers: { 'content-type': 'application/json' },
        method: 'GET',
        url: `http://back:${process.env.BACKEND_PORT}`,
        body: JSON.stringify(req.body),
        timeout: 1000
    }, (err, result) => {
        if (!err) {
            return console.log(`OK`, result.body) 
            res.redirect("/");
        } else {
            res.status(500).send({ error: `Error ${err}` });
        }
    });    
});

app.use('/', router);
app.listen(port);

console.log(`Running on port ${port}`);