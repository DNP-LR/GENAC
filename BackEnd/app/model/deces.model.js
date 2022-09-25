module.exports = (sequlize, Sequelize) => {
  const Deces = sequelize.define('Deces',{
    //TODO: Tu ajouts les info de ta table DECES ici la seulement.
    numRefeActe :{
      type: Sequelize.INT,
      allowNull: false,
      unique: true,
    },
    nomDefunt :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
  
  
    prenomDefunt :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
                             
    dateDecesDefunt :{
      type: Sequelize.timestamp,
      allowNull: false,
    },
    dateNaissDefunt :{
      type: Sequelize.timestamp,
      allowNull: false,
    },
    
    lieuNaissDefunt   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    sexeDefunt   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    situationMaritalDefunt   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    professionDefunt  :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    domicilDefuntt    :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    nomPereDefunt  :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    nomMereDefunt    :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    dateDeclarationDeces  :{
      type: Sequelize.timestamp,
      allowNull: false,
    },
    nomDeclarant   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    professionDeclarant  :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    qualiteDeclarant   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    nomTemoin1    :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    professionTemoin1  :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    residenceTemoin1   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    nomTemoin2     :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    professionTemoin2   :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    residenceTemoin2    :{
      type: Sequelize.varchar(254),
      allowNull: false,
    },
    
  

  });
  return Deces;
}
