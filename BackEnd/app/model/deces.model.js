module.exports = (sequlize, Sequelize) => {
  const Deces = sequelize.define('Deces',{
    //TODO: Tu ajouts les info de ta table DECES ici la seulement.
    title:{
      type: Sequelize.STRING,
      allowNull: false,
      unique: true,
    },
    description:{
      type: Sequelize.STRING,
      allowNull: false,
    }

  });
  return Deces;
}
