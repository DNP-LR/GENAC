module.exports = (sequlize, Sequelize) => {
    const Deces = sequelize.define('Demande',{
      //TODO: Tu ajouts les info de ta table DECES ici la seulement.
      Num_reconn  :{
        type: Sequelize.INT,
        allowNull: false,
        unique: true,
      },
      nomEnfant :{
        type: Sequelize.INT,
        allowNull: false,
      },
    
    
      prenomEnfant  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
                               
      dateNaissEnfant  :{
        type: Sequelize. timestamp ,
        allowNull: false,
      },
      lieuNaissEnfant  :{
        type: Sequelize.INT,
        allowNull: false,
      },
      
      sexeEnfant     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      nomPereEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      prenomPereEnfant      :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      dateNaissPereEnfant  :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      lieuNaisspereEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      domicilpereEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      professionpereEnfant      :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      nomMereEnfant     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      prenomMereEnfant     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      dateNaissMereEnfant    :{
        type: Sequelize. timestamp ,
        allowNull: false,
      },
      lieuNaissmereEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      domicilmereEnfant     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      professionmereEnfant    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      nomTemoin1     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      professionTemoin1    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      dateDeNaissTemoin1  :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
      numCniTemoin2     :{
        type: Sequelize.integer,
        allowNull: false,
      },
      numCniPere    :{
        type: Sequelize.integer,
        allowNull: false,
      },
      numCniMere     :{
        type: Sequelize.integer,
        allowNull: false,
      },
      lieuNaissTemoin2   :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },

      nationalite     :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },

    dateDeNaissTemoin2  :{
        type: Sequelize.timestamp,
        allowNull: false,
      },
    });
    return Demande;
  }
  