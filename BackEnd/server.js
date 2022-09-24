const express = require('express');
const core = require('express');

const app= express();

var corsOptions = {
  origin:"http://localhost:8080"
};
app.use(core(corsOptions))

app.use(express.json());
app.use(express.urlencoded({extended:true}));

app.get("/", (req, res) =>{
  res.json({message: "Welcome to backend application!"});
});

const PORT =process.env.PORT || 8080;

app.listen(PORT, () =>{
  console.log(`Server listening on port ${PORT}`);
});

