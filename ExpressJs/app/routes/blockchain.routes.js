module.exports = app => {
  // const blockchain = require("../controllers/blockchain.controllers.js");
  const person = require("../controllers/person.controllers.js");
  const recruiter = require("../controllers/recruiter.controllers");
  const education = require("../controllers/education.controllers");

  var router = require("express").Router();

  //Create a new person
  router.post("/person/create", person.create);
  //View all Person
  router.get("/person/all", person.findAll);
  //Find a person
  router.post("/person/one", person.findOne);

  //Create a Recruiter
  router.post("/recruiter/create", recruiter.create);
  //View all Recruiter
  router.get("/recruiter/all", recruiter.findAll);

  //create Education
  router.post("/education/create", education.create);
  //View all Education
  router.get("/education/all", education.findAll);



  app.use('/api/jtrack', router);
};
