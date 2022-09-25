module.exports = (sequlize, Sequelize) => {
    const Deces = sequelize.define('Utilisateur',{
      //TODO: Tu ajouts les info de ta table DECES ici la seulement.
      idUser   :{
        type: Sequelize.INT,
        allowNull: false,
        unique: true,
      },
      nomUser  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
    
    
      prenomUser:{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
                               
      dateNaiss    :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      numTel  :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      
      sexe    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      email    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      loginUser   :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      passwordUser  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      
    });
    return Utilisateur;
  }
  