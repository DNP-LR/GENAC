const dbConfig = require("../config/db.config");

const Sequelize = require("sequelize");

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD,{
  host: dbConfig.HOST,
    dialect: dbConfig.dialect,
  operatorsAliases : false,

  pool : {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
   idle: dbConfig.pool.idle
  }
});

const db ={};
db.Sequelize=Sequelize;
db.sequelize=Sequelize;
db.deces= require("./deces.model.js")(sequelize, Sequelize);

// const app= express();
// app.use();

const db = require("./app/models");
db.sequelize.sync().then(()=>{
  console.log("Database synced");
}).catch((err) =>{
  console.log("Failed to db:" + err.message);
});


module.exports=db;
