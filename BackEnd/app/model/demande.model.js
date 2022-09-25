module.exports = (sequlize, Sequelize) => {
    const Deces = sequelize.define('Demande',{
      //TODO: Tu ajouts les info de ta table DECES ici la seulement.
      idDemande  :{
        type: Sequelize.INT,
        allowNull: false,
        unique: true,
      },
      numDeclaration :{
        type: Sequelize.INT,
        allowNull: false,
      },
    
    
      cniPere  :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
                               
      cniMere   :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      refActeMar  :{
        type: Sequelize.INT,
        allowNull: false,
      },
      
      cniTemoins    :{
        type: Sequelize.varchar(254),
        allowNull: false,
      },
      
    
  
    });
    return Demande;
  }
  