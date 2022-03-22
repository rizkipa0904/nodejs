const express = require('express');
const app = express();

console.log('Server Running ')

app.get('/', (req, res)=>{
    res.send('Welcome');
    console.log('running')
});

app.listen(6000)
