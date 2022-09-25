module.exports = (sequlize, Sequelize) => {
    const Deces = sequelize.define('Naissance',{
      //TODO: Tu ajouts les info de ta table DECES ici la seulement.
      numRefeActe :{
        type: Sequelize.INT,
        allowNull: false,
        unique: true,
      },
      Nom_enfant :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
    
    
      prenomEnfant  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
                               
      dateNaissEnfant :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      lieuNaissEnfant  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      
      sexeEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      nomPereEnfant   :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      prenomPereEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      dateNaissPereEnfant :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      domicilpereEnfant  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      professionpereEnfant   :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      prenomMereEnfant     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      dateNaissMereEnfant  :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      lieuNaissmereEnfant  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      domicilmereEnfant  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      professionmereEnfant:{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      nomDeclarant     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      
    
  
    });
    return Naissance;
  }
  