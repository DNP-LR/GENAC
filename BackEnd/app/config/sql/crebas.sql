/*==============================================================*/
/* Nom de SGBD :  Sybase SQL Anywhere 11                        */
/* Date de création :  03/10/2022 14:30:12                      */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ACTE_ARCHIVER_CHEFDECI') then
    alter table Acte
       delete foreign key FK_ACTE_ARCHIVER_CHEFDECI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACTE_EDITERETA_SECRETAI') then
    alter table Acte
       delete foreign key FK_ACTE_EDITERETA_SECRETAI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACTEDEDE_ASSOCIATI_ACTE') then
    alter table ActeDeDeces
       delete foreign key FK_ACTEDEDE_ASSOCIATI_ACTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACTEDEMA_ASSOCIATI_ACTE') then
    alter table ActeDeMariage
       delete foreign key FK_ACTEDEMA_ASSOCIATI_ACTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACTEDENA_ASSOCIATI_ACTE') then
    alter table ActeDeNaissance
       delete foreign key FK_ACTEDENA_ASSOCIATI_ACTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CHEFDECI_GENERALIS_UTILISAT') then
    alter table ChefDeCirconscriptionAdministrative_Bunec_
       delete foreign key FK_CHEFDECI_GENERALIS_UTILISAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CONSULTA_CONSULTE_DECLARAT') then
    alter table ConsultationDeclaration
       delete foreign key FK_CONSULTA_CONSULTE_DECLARAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CONSULTA_EST_CONSU_SECRETAI') then
    alter table ConsultationDeclaration
       delete foreign key FK_CONSULTA_EST_CONSU_SECRETAI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DECLARAT_DELIBRERE_MEDECIN') then
    alter table Declaration
       delete foreign key FK_DECLARAT_DELIBRERE_MEDECIN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DEMANDEE_GENERALIS_DEMANDE') then
    alter table DemandeEtablissemntActeDeDeces
       delete foreign key FK_DEMANDEE_GENERALIS_DEMANDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DEMANDEE_GENERALIS_DEMANDE') then
    alter table DemandeEtablissemntActeDeMariage
       delete foreign key FK_DEMANDEE_GENERALIS_DEMANDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DEMANDEE_GENERALIS_DEMANDE') then
    alter table DemandeEtablissemntActeDeNaissance
       delete foreign key FK_DEMANDEE_GENERALIS_DEMANDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HISTORIQ_CHEF_CHEFDECI') then
    alter table HistoriqueActivite
       delete foreign key FK_HISTORIQ_CHEF_CHEFDECI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MEDECIN_GENERALIS_UTILISAT') then
    alter table Medecin
       delete foreign key FK_MEDECIN_GENERALIS_UTILISAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OFFICIER_GENERALIS_SECRETAI') then
    alter table OfficierD_EtatCivil
       delete foreign key FK_OFFICIER_GENERALIS_SECRETAI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OFFICIER_AVOIRAPPA_MAIRIE') then
    alter table OfficierD_EtatCivil
       delete foreign key FK_OFFICIER_AVOIRAPPA_MAIRIE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAYEMENT_FAIRE_ETR_UTILISAT') then
    alter table Payement
       delete foreign key FK_PAYEMENT_FAIRE_ETR_UTILISAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SECRETAI_GENERALIS_UTILISAT') then
    alter table SecretaireD_EtatCivil
       delete foreign key FK_SECRETAI_GENERALIS_UTILISAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_UTILISAT_APPARTENI_ACTEDEDE') then
    alter table Utilisateur
       delete foreign key FK_UTILISAT_APPARTENI_ACTEDEDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_UTILISAT_ASSOCIATI_RECONNAI') then
    alter table Utilisateur
       delete foreign key FK_UTILISAT_ASSOCIATI_RECONNAI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_UTILISAT_POSSEDER_ACTEDEMA') then
    alter table Utilisateur
       delete foreign key FK_UTILISAT_POSSEDER_ACTEDEMA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_UTILISAT_POSSERDER_ACTEDENA') then
    alter table Utilisateur
       delete foreign key FK_UTILISAT_POSSERDER_ACTEDENA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ENVOYER_ENVOYER_DEMANDE') then
    alter table envoyer
       delete foreign key FK_ENVOYER_ENVOYER_DEMANDE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ENVOYER_ENVOYER_UTILISAT') then
    alter table envoyer
       delete foreign key FK_ENVOYER_ENVOYER_UTILISAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OPPOSERI_OPPOSERIN_OPPOSERM') then
    alter table opposerInterrompre
       delete foreign key FK_OPPOSERI_OPPOSERIN_OPPOSERM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OPPOSERI_OPPOSERIN_UTILISAT') then
    alter table opposerInterrompre
       delete foreign key FK_OPPOSERI_OPPOSERIN_UTILISAT
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Acte'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Acte
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ActeDeDeces'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ActeDeDeces
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ActeDeMariage'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ActeDeMariage
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ActeDeNaissance'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ActeDeNaissance
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GENERALISATION_8_FK'
     and t.table_name='ChefDeCirconscriptionAdministrative_Bunec_'
) then
   drop index ChefDeCirconscriptionAdministrative_Bunec_.GENERALISATION_8_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ChefDeCirconscriptionAdministrative_Bunec_'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ChefDeCirconscriptionAdministrative_Bunec_
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ConsultationDeclaration'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ConsultationDeclaration
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Declaration'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Declaration
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Demande'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Demande
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GENERALISATION_6_FK'
     and t.table_name='DemandeEtablissemntActeDeDeces'
) then
   drop index DemandeEtablissemntActeDeDeces.GENERALISATION_6_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DemandeEtablissemntActeDeDeces'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DemandeEtablissemntActeDeDeces
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GENERALISATION_2_FK'
     and t.table_name='DemandeEtablissemntActeDeMariage'
) then
   drop index DemandeEtablissemntActeDeMariage.GENERALISATION_2_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DemandeEtablissemntActeDeMariage'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DemandeEtablissemntActeDeMariage
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GENERALISATION_1_FK'
     and t.table_name='DemandeEtablissemntActeDeNaissance'
) then
   drop index DemandeEtablissemntActeDeNaissance.GENERALISATION_1_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DemandeEtablissemntActeDeNaissance'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DemandeEtablissemntActeDeNaissance
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HistoriqueActivite'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HistoriqueActivite
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Mairie'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Mairie
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GENERALISATION_7_FK'
     and t.table_name='Medecin'
) then
   drop index Medecin.GENERALISATION_7_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Medecin'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Medecin
end if;

if exists(
   select 1 from sys.systable 
   where table_name='OfficierD_EtatCivil'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table OfficierD_EtatCivil
end if;

if exists(
   select 1 from sys.systable 
   where table_name='OpposerMariage'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table OpposerMariage
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FAIRE_FK'
     and t.table_name='Payement'
) then
   drop index Payement.FAIRE_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Payement'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Payement
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ReconnaissanceParterniteEnfant'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ReconnaissanceParterniteEnfant
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GENERALISATION_4_FK'
     and t.table_name='SecretaireD_EtatCivil'
) then
   drop index SecretaireD_EtatCivil.GENERALISATION_4_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SecretaireD_EtatCivil'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SecretaireD_EtatCivil
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Utilisateur'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Utilisateur
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ENVOYER_FK'
     and t.table_name='envoyer'
) then
   drop index envoyer.ENVOYER_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='envoyer'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table envoyer
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='OPPOSERINTERROMPRE_FK'
     and t.table_name='opposerInterrompre'
) then
   drop index opposerInterrompre.OPPOSERINTERROMPRE_FK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='opposerInterrompre'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table opposerInterrompre
end if;

/*==============================================================*/
/* Table : Acte                                                 */
/*==============================================================*/
create table Acte 
(
   numRefeActe          integer                        null,
   dateProd             timestamp                      null,
   heureProd            varchar(254)                   null,
   centreEtablissement  varchar(254)                   null,
   officierEtatCivil    varchar(254)                   null,
   secretaireEtatCivil  varchar(254)                   null,
   typeActe             varchar(254)                   null
);

/*==============================================================*/
/* Table : ActeDeDeces                                          */
/*==============================================================*/
create table ActeDeDeces 
(
   numRefeActe          integer                        null,
   nomDefunt            varchar(254)                   null,
   prenomDefunt         varchar(254)                   null,
   dateDecesDefunt      timestamp                      null,
   dateNaissDefunt      timestamp                      null,
   lieuNaissDefunt      varchar(254)                   null,
   sexeDefunt           varchar(254)                   null,
   situationMaritalDefunt varchar(254)                   null,
   professionDefunt     integer                        null,
   domicilDefuntt       varchar(254)                   null,
   nomPereDefunt        varchar(254)                   null,
   nomMereDefunt        varchar(254)                   null,
   dateDeclarationDeces integer                        null,
   nomDeclarant         integer                        null,
   professionDeclarant  integer                        null,
   qualiteDeclarant     integer                        null,
   nomTemoin1           integer                        null,
   professionTemoin1    integer                        null,
   residenceTemoin1     integer                        null,
   nomTemoin2           integer                        null,
   professionTemoin2    integer                        null,
   residenceTemoin2     integer                        null
);

/*==============================================================*/
/* Table : ActeDeMariage                                        */
/*==============================================================*/
create table ActeDeMariage 
(
   numRefeActe          integer                        null,
   nomEpoux             varchar(254)                   null,
   prenomEpoux          varchar(254)                   null,
   nomEpouse            varchar(254)                   null,
   prenomEpouse         varchar(254)                   null,
   dateMariage          timestamp                      null,
   dateNaissEpoux       timestamp                      null,
   lieuNaissEpoux       varchar(254)                   null,
   professionEpoux      varchar(254)                   null,
   nationaliteEpoux     varchar(254)                   null,
   domicilEpoux         varchar(254)                   null,
   nomPereEpoux         varchar(254)                   null,
   nomMereEpoux         varchar(254)                   null,
   dateNaissEpouse      timestamp                      null,
   lieuNaissEpouse      varchar(254)                   null,
   professionEpouse     varchar(254)                   null,
   nationaliteEpouse    varchar(254)                   null,
   domicilEpouse        varchar(254)                   null,
   nomPereEpouse        varchar(254)                   null,
   nomMereEpouse        varchar(254)                   null,
   regimeDeBien         varchar(254)                   null,
   systemeMatrimonial   varchar(254)                   null,
   opposition           varchar(254)                   null,
   nomChefFamilleEpoux  varchar(254)                   null,
   nomChefFamilleEpouse varchar(254)                   null,
   nomTemoinEpoux       varchar(254)                   null,
   nomTemoinEpouse      varchar(254)                   null
);

/*==============================================================*/
/* Table : ActeDeNaissance                                      */
/*==============================================================*/
create table ActeDeNaissance 
(
   numRefeActe          integer                        null,
   Nom_enfant           varchar(254)                   null,
   prenomEnfant         varchar(254)                   null,
   dateNaissEnfant      timestamp                      null,
   lieuNaissEnfant      varchar(254)                   null,
   sexeEnfant           integer                        null,
   nomPereEnfant        varchar(254)                   null,
   prenomPereEnfant     varchar(254)                   null,
   dateNaissPereEnfant  timestamp                      null,
   domicilpereEnfant    varchar(254)                   null,
   professionpereEnfant varchar(254)                   null,
   prenomMereEnfant     varchar(254)                   null,
   dateNaissMereEnfant  timestamp                      null,
   lieuNaissmereEnfant  varchar(254)                   null,
   domicilmereEnfant    varchar(254)                   null,
   professionmereEnfant varchar(254)                   null,
   nomDeclarant         varchar(254)                   null
);

/*==============================================================*/
/* Table : ChefDeCirconscriptionAdministrative_Bunec_           */
/*==============================================================*/
create table ChefDeCirconscriptionAdministrative_Bunec_ 
(
   idUser               integer                        null,
   "login"              varchar(254)                   null,
   motDePasse           varchar(254)                   null
);

/*==============================================================*/
/* Index : GENERALISATION_8_FK                                  */
/*==============================================================*/
create index GENERALISATION_8_FK on ChefDeCirconscriptionAdministrative_Bunec_ (
idUser ASC
);

/*==============================================================*/
/* Table : ConsultationDeclaration                              */
/*==============================================================*/
create table ConsultationDeclaration 
(
   idConsultation       integer                        not null,
   numDeclaration       integer                        null,
   idUser               integer                        null,
   constraint PK_CONSULTATIONDECLARATION primary key clustered (idConsultation)
);

/*==============================================================*/
/* Table : Declaration                                          */
/*==============================================================*/
create table Declaration 
(
   numDeclaration       integer                        not null,
   nomDeclarant         varchar(254)                   null,
   dateDeclaration      timestamp                      null,
   lieuDeclaration      varchar(254)                   null,
   typeDeclaration      varchar(254)                   null,
   constraint PK_DECLARATION primary key clustered (numDeclaration)
);

/*==============================================================*/
/* Table : Demande                                              */
/*==============================================================*/
create table Demande 
(
   idDemande            integer                        not null,
   dateEtablisementDemande integer                        null,
   constraint PK_DEMANDE primary key clustered (idDemande)
);

/*==============================================================*/
/* Table : DemandeEtablissemntActeDeDeces                       */
/*==============================================================*/
create table DemandeEtablissemntActeDeDeces 
(
   idDemande            integer                        null,
   numDeclarationDeces  integer                        null,
   refActeDeMariage     varchar(254)                   null,
   cniDefunt            varchar(254)                   null,
   lieuDeces            varchar(254)                   null,
   cniTemoins           varchar(254)                   null
);

/*==============================================================*/
/* Index : GENERALISATION_6_FK                                  */
/*==============================================================*/
create index GENERALISATION_6_FK on DemandeEtablissemntActeDeDeces (
idDemande ASC
);

/*==============================================================*/
/* Table : DemandeEtablissemntActeDeMariage                     */
/*==============================================================*/
create table DemandeEtablissemntActeDeMariage 
(
   idDemande            integer                        null,
   refActeNaissEpoux    varchar(254)                   null,
   cniEpoux             varchar(254)                   null,
   refActeNaissEpouse   varchar(254)                   null,
   cniEpouse            varchar(254)                   null,
   photoDesEpoux        varchar(254)                   null,
   cniChefDeFamilleEpoux varchar(254)                   null,
   cniChefDeFamilleEpouse varchar(254)                   null,
   cniTemoinsEpoux      varchar(254)                   null,
   cniTemoinsEpouse     varchar(254)                   null
);

/*==============================================================*/
/* Index : GENERALISATION_2_FK                                  */
/*==============================================================*/
create index GENERALISATION_2_FK on DemandeEtablissemntActeDeMariage (
idDemande ASC
);

/*==============================================================*/
/* Table : DemandeEtablissemntActeDeNaissance                   */
/*==============================================================*/
create table DemandeEtablissemntActeDeNaissance 
(
   idDemande            integer                        null,
   numDeclaration       integer                        null,
   cniPere              varchar(254)                   null,
   cniMere              varchar(254)                   null,
   refActeMar           varchar(254)                   null,
   cniTemoins           varchar(254)                   null
);

/*==============================================================*/
/* Index : GENERALISATION_1_FK                                  */
/*==============================================================*/
create index GENERALISATION_1_FK on DemandeEtablissemntActeDeNaissance (
idDemande ASC
);

/*==============================================================*/
/* Table : HistoriqueActivite                                   */
/*==============================================================*/
create table HistoriqueActivite 
(
   "date"               date                           null
);

/*==============================================================*/
/* Table : Mairie                                               */
/*==============================================================*/
create table Mairie 
(
   idMairie             integer                        null,
   localisation         varchar(254)                   null,
   nomMairie            varchar(254)                   null
);

/*==============================================================*/
/* Table : Medecin                                              */
/*==============================================================*/
create table Medecin 
(
   idUser               integer                        null,
   "login"              varchar(254)                   null,
   motDePasse           varchar(254)                   null
);

/*==============================================================*/
/* Index : GENERALISATION_7_FK                                  */
/*==============================================================*/
create index GENERALISATION_7_FK on Medecin (
idUser ASC
);

/*==============================================================*/
/* Table : OfficierD_EtatCivil                                  */
/*==============================================================*/
create table OfficierD_EtatCivil 
(
   idUser               integer                        null,
   idMairie             integer                        null,
   "login"              varchar(254)                   null,
   motDePasse           varchar(254)                   null
);

/*==============================================================*/
/* Table : OpposerMariage                                       */
/*==============================================================*/
create table OpposerMariage 
(
   nomDemandeur         varchar(254)                   null,
   qualiteDuDemandeur   varchar(254)                   null,
   objetDemande         varchar(254)                   null
);

/*==============================================================*/
/* Table : Payement                                             */
/*==============================================================*/
create table Payement 
(
   idUser               integer                        null,
   idPaie               integer                        null,
   modePaie             varchar(254)                   null,
   datePaie             timestamp                      null
);

/*==============================================================*/
/* Index : FAIRE_FK                                             */
/*==============================================================*/
create index FAIRE_FK on Payement (
idUser ASC
);

/*==============================================================*/
/* Table : ReconnaissanceParterniteEnfant                       */
/*==============================================================*/
create table ReconnaissanceParterniteEnfant 
(
   Num_reconn           integer                        null,
   nomEnfant            varchar(254)                   null,
   prenomEnfant         varchar(254)                   null,
   dateNaissEnfant      timestamp                      null,
   lieuNaissEnfant      varchar(254)                   null,
   sexeEnfant           integer                        null,
   nomPereEnfant        varchar(254)                   null,
   prenomPereEnfant     varchar(254)                   null,
   dateNaissPereEnfant  timestamp                      null,
   lieuNaisspereEnfant  varchar(254)                   null,
   domicilpereEnfant    varchar(254)                   null,
   professionpereEnfant varchar(254)                   null,
   nomMereEnfant        varchar(254)                   null,
   prenomMereEnfant     varchar(254)                   null,
   dateNaissMereEnfant  timestamp                      null,
   lieuNaissmereEnfant  varchar(254)                   null,
   domicilmereEnfant    varchar(254)                   null,
   professionmereEnfant varchar(254)                   null,
   nomTemoin1           varchar(254)                   null,
   professionTemoin1    integer                        null,
   dateDeNaissTemoin1   integer                        null,
   lieuNaissTemoin1     integer                        null,
   Temoin1              integer                        null,
   nomTemoin2           integer                        null,
   professionTemoin2    integer                        null,
   dateDeNaissTemoin2   integer                        null,
   lieuNaissTemoin2     integer                        null,
   numCniTemoin2        integer                        null,
   numCniPere           integer                        null,
   numCniMere           integer                        null,
   natiomalite          integer                        null
);

/*==============================================================*/
/* Table : SecretaireD_EtatCivil                                */
/*==============================================================*/
create table SecretaireD_EtatCivil 
(
   idUser               integer                        not null,
   "login"              varchar(254)                   null,
   motDePasse           varchar(254)                   null,
   constraint PK_SECRETAIRED_ETATCIVIL primary key clustered (idUser)
);

/*==============================================================*/
/* Index : GENERALISATION_4_FK                                  */
/*==============================================================*/
create index GENERALISATION_4_FK on SecretaireD_EtatCivil (
idUser ASC
);

/*==============================================================*/
/* Table : Utilisateur                                          */
/*==============================================================*/
create table Utilisateur 
(
   idUser               integer                        not null,
   nomUser              varchar(254)                   null,
   prenomUser           timestamp                      null,
   email                varchar(254)                   null,
   numTel               varchar(254)                   null,
   sexe                 varchar(254)                   null,
   dateNaiss            timestamp                      null,
   loginUser            varchar(254)                   null,
   passwordUser         varchar(254)                   null,
   dateCreat            timestamp                      null,
   numRefeActe          integer                        null,
   Act_numRefeActe      integer                        null,
   Num_reconn           integer                        null,
   constraint PK_UTILISATEUR primary key clustered (idUser)
);

/*==============================================================*/
/* Table : envoyer                                              */
/*==============================================================*/
create table envoyer 
(
   idDemande            integer                        null,
   idUser               integer                        null,
   id_user              char(10)                       null,
   num_demandeur        char(10)                       null
);

/*==============================================================*/
/* Index : ENVOYER_FK                                           */
/*==============================================================*/
create index ENVOYER_FK on envoyer (
idDemande ASC
);

/*==============================================================*/
/* Table : opposerInterrompre                                   */
/*==============================================================*/
create table opposerInterrompre 
(
   idUser               integer                        null,
   nomDemandeur         varchar(254)                   null,
   id_user              string                         null,
   nom_demandeur        string                         null
);

/*==============================================================*/
/* Index : OPPOSERINTERROMPRE_FK                                */
/*==============================================================*/
create index OPPOSERINTERROMPRE_FK on opposerInterrompre (
idUser ASC
);

alter table Acte
   add constraint FK_ACTE_ARCHIVER_CHEFDECI foreign key (numRefeActe)
      references ChefDeCirconscriptionAdministrative_Bunec_ (idUser)
      on update restrict
      on delete restrict;

alter table Acte
   add constraint FK_ACTE_EDITERETA_SECRETAI foreign key (numRefeActe)
      references SecretaireD_EtatCivil (idUser)
      on update restrict
      on delete restrict;

alter table ActeDeDeces
   add constraint FK_ACTEDEDE_ASSOCIATI_ACTE foreign key (numRefeActe)
      references Acte (numRefeActe)
      on update restrict
      on delete restrict;

alter table ActeDeMariage
   add constraint FK_ACTEDEMA_ASSOCIATI_ACTE foreign key (numRefeActe)
      references Acte (numRefeActe)
      on update restrict
      on delete restrict;

alter table ActeDeNaissance
   add constraint FK_ACTEDENA_ASSOCIATI_ACTE foreign key (numRefeActe)
      references Acte (numRefeActe)
      on update restrict
      on delete restrict;

alter table ChefDeCirconscriptionAdministrative_Bunec_
   add constraint FK_CHEFDECI_GENERALIS_UTILISAT foreign key (idUser)
      references Utilisateur (idUser)
      on update restrict
      on delete restrict;

alter table ConsultationDeclaration
   add constraint FK_CONSULTA_CONSULTE_DECLARAT foreign key (numDeclaration)
      references Declaration (numDeclaration)
      on update restrict
      on delete restrict;

alter table ConsultationDeclaration
   add constraint FK_CONSULTA_EST_CONSU_SECRETAI foreign key (idUser)
      references SecretaireD_EtatCivil (idUser)
      on update restrict
      on delete restrict;

alter table Declaration
   add constraint FK_DECLARAT_DELIBRERE_MEDECIN foreign key (numDeclaration)
      references Medecin (idUser)
      on update restrict
      on delete restrict;

alter table DemandeEtablissemntActeDeDeces
   add constraint FK_DEMANDEE_GENERALIS_DEMANDE foreign key (idDemande)
      references Demande (idDemande)
      on update restrict
      on delete restrict;

alter table DemandeEtablissemntActeDeMariage
   add constraint FK_DEMANDEE_GENERALIS_DEMANDE foreign key (idDemande)
      references Demande (idDemande)
      on update restrict
      on delete restrict;

alter table DemandeEtablissemntActeDeNaissance
   add constraint FK_DEMANDEE_GENERALIS_DEMANDE foreign key (idDemande)
      references Demande (idDemande)
      on update restrict
      on delete restrict;

alter table HistoriqueActivite
   add constraint FK_HISTORIQ_CHEF_CHEFDECI foreign key ("date")
      references ChefDeCirconscriptionAdministrative_Bunec_ (idUser)
      on update restrict
      on delete restrict;

alter table Medecin
   add constraint FK_MEDECIN_GENERALIS_UTILISAT foreign key (idUser)
      references Utilisateur (idUser)
      on update restrict
      on delete restrict;

alter table OfficierD_EtatCivil
   add constraint FK_OFFICIER_GENERALIS_SECRETAI foreign key (idUser)
      references SecretaireD_EtatCivil (idUser)
      on update restrict
      on delete restrict;

alter table OfficierD_EtatCivil
   add constraint FK_OFFICIER_AVOIRAPPA_MAIRIE foreign key (idMairie)
      references Mairie (idMairie)
      on update restrict
      on delete restrict;

alter table Payement
   add constraint FK_PAYEMENT_FAIRE_ETR_UTILISAT foreign key (idUser)
      references Utilisateur (idUser)
      on update restrict
      on delete restrict;

alter table SecretaireD_EtatCivil
   add constraint FK_SECRETAI_GENERALIS_UTILISAT foreign key (idUser)
      references Utilisateur (idUser)
      on update restrict
      on delete restrict;

alter table Utilisateur
   add constraint FK_UTILISAT_APPARTENI_ACTEDEDE foreign key (dateCreat, dateNaiss, idUser, email, loginUser, numTel, nomUser, passwordUser, prenomUser)
      references ActeDeDeces (dateDecesDefunt, dateDeclarationDeces, dateNaissDefunt, domicilDefuntt, lieuNaissDefunt, nomDeclarant, nomTemoin1, nomTemoin2, nomDefunt)
      on update restrict
      on delete restrict;

alter table Utilisateur
   add constraint FK_UTILISAT_ASSOCIATI_RECONNAI foreign key (Num_reconn)
      references ReconnaissanceParterniteEnfant (Num_reconn)
      on update restrict
      on delete restrict;

alter table Utilisateur
   add constraint FK_UTILISAT_POSSEDER_ACTEDEMA foreign key (Act_numRefeActe)
      references ActeDeMariage (numRefeActe)
      on update restrict
      on delete restrict;

alter table Utilisateur
   add constraint FK_UTILISAT_POSSERDER_ACTEDENA foreign key (numRefeActe)
      references ActeDeNaissance (numRefeActe)
      on update restrict
      on delete restrict;

alter table envoyer
   add constraint FK_ENVOYER_ENVOYER_DEMANDE foreign key (idDemande)
      references Demande (idDemande)
      on update restrict
      on delete restrict;

alter table envoyer
   add constraint FK_ENVOYER_ENVOYER_UTILISAT foreign key (idUser)
      references Utilisateur (idUser)
      on update restrict
      on delete restrict;

alter table opposerInterrompre
   add constraint FK_OPPOSERI_OPPOSERIN_OPPOSERM foreign key (nomDemandeur)
      references OpposerMariage (nomDemandeur)
      on update restrict
      on delete restrict;

alter table opposerInterrompre
   add constraint FK_OPPOSERI_OPPOSERIN_UTILISAT foreign key (idUser)
      references Utilisateur (idUser)
      on update restrict
      on delete restrict;

