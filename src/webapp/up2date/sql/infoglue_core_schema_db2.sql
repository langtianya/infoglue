DROP SEQUENCE cmAvailServBind_seq;CREATE SEQUENCE cmAvailServBind_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmAvailServBind;CREATE TABLE cmAvailServBind (  AvailServBindId integer  NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  visualizationAction varchar(100) NOT NULL,  isMandatory integer default 0 NOT NULL,  isUserEditable integer default 0 NOT NULL,  isInheritable integer default 0 NOT NULL,  PRIMARY KEY  (AvailServBindId));DROP SEQUENCE cmAvailServBindSiNoTypeDef_seq;CREATE SEQUENCE cmAvailServBindSiNoTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmAvailServBindSiNoTypeDef;CREATE TABLE cmAvailServBindSiNoTypeDef (  AvailServBindId integer default 0 NOT NULL,  SiNoTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (AvailServBindId, SiNoTypeDefId));DROP SEQUENCE cmCont_seq;CREATE SEQUENCE cmCont_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmCont;CREATE TABLE cmCont (  ContId integer  NOT NULL,  name varchar(100) NOT NULL,  publishDateTime date  NOT NULL,  expireDateTime date  NOT NULL,  contentTypeDefId integer default NULL,  parentContId integer default NULL,  creator varchar(100) NOT NULL,  repositoryId integer default 0 NOT NULL,  isBranch integer default 0 NOT NULL,  isProtected integer default 2 NOT NULL,  isDeleted int NOT NULL DEFAULT 0,  PRIMARY KEY  (ContId));DROP SEQUENCE cmContRelation_seq;CREATE SEQUENCE cmContRelation_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmContRelation;CREATE TABLE cmContRelation (  ContRelationId integer  NOT NULL,  relationInternalName varchar(100) NOT NULL,  relationTypeId integer default 0 NOT NULL,  sourceContId integer default 0 NOT NULL,  destinationContId integer default 0 NOT NULL,  PRIMARY KEY  (ContRelationId));DROP SEQUENCE cmContentTypeDef_seq;CREATE SEQUENCE cmContentTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmContentTypeDef;CREATE TABLE cmContentTypeDef (  contentTypeDefId integer  NOT NULL,  schemaValue clob NOT NULL,  name varchar(100) NOT NULL,  type integer default 0 NOT NULL,  PRIMARY KEY  (contentTypeDefId));DROP SEQUENCE cmContVer_seq;CREATE SEQUENCE cmContVer_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmContVer;CREATE TABLE cmContVer (  ContVerId integer  NOT NULL,  stateId integer default 0 NOT NULL,  VerValue clob NOT NULL,  modifiedDateTime date  NOT NULL,  VerComment varchar(1024),  isCheckedOut integer default 0 NOT NULL,  isActive integer default 1 NOT NULL,  ContId integer default 0 NOT NULL,  languageId integer default 0 NOT NULL,  versionModifier varchar(1024) NOT NULL,  PRIMARY KEY  (ContVerId));DROP SEQUENCE cmContVerDigAsset_seq;CREATE SEQUENCE cmContVerDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmContVerDigAsset;CREATE TABLE cmContVerDigAsset (  ContVerId integer default 0 NOT NULL,  DigAssetId integer default 0 NOT NULL,  PRIMARY KEY  (ContVerId, DigAssetId));DROP SEQUENCE cmUserPropDigAsset_seq;CREATE SEQUENCE cmUserPropDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmUserPropDigAsset;CREATE TABLE cmUserPropDigAsset (  userPropId integer default 0 NOT NULL,  DigAssetId integer default 0 NOT NULL,  PRIMARY KEY  (userPropId, DigAssetId));DROP SEQUENCE cmRolePropDigAsset_seq;CREATE SEQUENCE cmRolePropDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRolePropDigAsset;CREATE TABLE cmRolePropDigAsset (  rolePropId integer default 0 NOT NULL,  DigAssetId integer default 0 NOT NULL,  PRIMARY KEY  (rolePropId, DigAssetId));DROP SEQUENCE cmDigAsset_seq;CREATE SEQUENCE cmDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmDigAsset;CREATE TABLE cmDigAsset (  DigAssetId integer  NOT NULL,  assetKey varchar(255) NOT NULL,  assetFileName varchar(1024) NOT NULL,  assetFilepath varchar(1024) NOT NULL,  assetFileSize integer default 0 NOT NULL,  assetContentType varchar(255) NOT NULL,  assetBlob blob,  PRIMARY KEY  (DigAssetId));DROP SEQUENCE cmLanguage_seq;CREATE SEQUENCE cmLanguage_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmLanguage;CREATE TABLE cmLanguage (  languageId integer  NOT NULL,  name varchar(100) NOT NULL,  languageCode varchar(5) NOT NULL,  charset varchar(30) NOT NULL,  PRIMARY KEY  (languageId));DROP SEQUENCE cmPublication_seq;CREATE SEQUENCE cmPublication_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmPublication;CREATE TABLE cmPublication (  publicationId integer  NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  publicationDateTime date  NOT NULL,  publisher varchar(100) NOT NULL,  repositoryId integer default 0 NOT NULL,  PRIMARY KEY  (publicationId));DROP SEQUENCE cmQualifyer_seq;CREATE SEQUENCE cmQualifyer_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmQualifyer;CREATE TABLE cmQualifyer (  qualifyerId integer  NOT NULL,  name varchar(100) NOT NULL,  value varchar(100) NOT NULL,  sortOrder integer default 0 NOT NULL,  ServBindId integer default 0 NOT NULL,  PRIMARY KEY  (qualifyerId));DROP SEQUENCE cmRepository_seq;CREATE SEQUENCE cmRepository_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRepository;CREATE TABLE cmRepository (  repositoryId integer  NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  dnsName varchar(255),  PRIMARY KEY  (repositoryId));DROP SEQUENCE cmRepositoryContTypeDef_seq;CREATE SEQUENCE cmRepositoryContTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRepositoryContTypeDef;CREATE TABLE cmRepositoryContTypeDef (  repositoryId integer default 0 NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (repositoryId, contentTypeDefId));DROP SEQUENCE cmRepositoryLanguage_seq;CREATE SEQUENCE cmRepositoryLanguage_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRepositoryLanguage;CREATE TABLE cmRepositoryLanguage (  repositoryLanguageId integer  NOT NULL,  repositoryId integer default 0 NOT NULL,  languageId integer default 0 NOT NULL,  isPublished integer default 0 NOT NULL,  sortOrder integer default 0 NOT NULL,  PRIMARY KEY  (repositoryLanguageId));DROP SEQUENCE cmRole_seq;CREATE SEQUENCE cmRole_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRole;CREATE TABLE cmRole (  roleName varchar(100) NOT NULL,  description varchar(255) NOT NULL,  PRIMARY KEY  (roleName));DROP SEQUENCE cmServBind_seq;CREATE SEQUENCE cmServBind_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmServBind;CREATE TABLE cmServBind (  ServBindId integer  NOT NULL,  name varchar(100) NOT NULL,  path varchar(255) NOT NULL,  BindTypeId integer default 0 NOT NULL,  ServDefId integer default 0 NOT NULL,  AvailServBindId integer default 0 NOT NULL,  SiNoVerId integer default 0 NOT NULL,  PRIMARY KEY  (ServBindId));DROP SEQUENCE cmServDef_seq;CREATE SEQUENCE cmServDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmServDef;CREATE TABLE cmServDef (  ServDefId integer  NOT NULL,  className varchar(100) NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  PRIMARY KEY  (ServDefId));DROP SEQUENCE cmServDefAvailServBind_seq;CREATE SEQUENCE cmServDefAvailServBind_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmServDefAvailServBind;CREATE TABLE cmServDefAvailServBind (  ServDefId integer default 0 NOT NULL,  AvailServBindId integer default 0 NOT NULL,  PRIMARY KEY  (ServDefId, AvailServBindId));DROP SEQUENCE cmSiNo_seq;CREATE SEQUENCE cmSiNo_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmSiNo;CREATE TABLE cmSiNo (  SiNoId integer NOT NULL,  name varchar(100) NOT NULL,  publishDateTime date NOT NULL,  expireDateTime date NOT NULL,  parentSiNoId integer default NULL,  creator varchar(100) NOT NULL,  repositoryId integer default 0 NOT NULL,  SiNoTypeDefId integer default 0,  isBranch integer default 0 NOT NULL,  metaInfoContentId integer DEFAULT -1,  isDeleted int NOT NULL DEFAULT 0,  PRIMARY KEY  (SiNoId));DROP SEQUENCE cmSiNoTypeDef_seq;CREATE SEQUENCE cmSiNoTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmSiNoTypeDef;CREATE TABLE cmSiNoTypeDef (  SiNoTypeDefId integer  NOT NULL,  invokerClassName varchar(100) NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  PRIMARY KEY  (SiNoTypeDefId));DROP SEQUENCE cmSiNoVer_seq;CREATE SEQUENCE cmSiNoVer_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmSiNoVer;CREATE TABLE cmSiNoVer (  SiNoVerId integer NOT NULL,  stateId integer default 0 NOT NULL,  VerNumber integer default 0 NOT NULL,  modifiedDateTime date NOT NULL,  VerComment varchar(1024) NOT NULL,  isCheckedOut integer default 0 NOT NULL,  isActive integer default 1 NOT NULL,  SiNoId integer default 0 NOT NULL,  versionModifier varchar(100) NOT NULL,  isProtected integer default 2 NOT NULL,  disablePageCache integer default 2 NOT NULL,  disableEditOnSight integer default 2 NOT NULL,  disableLanguages integer default 2 NOT NULL,  disableForceIDCheck integer default 2 NOT NULL,  forceProtocolChange integer default 0 NOT NULL,  contentType varchar(100) DEFAULT 'text/html' NOT NULL,  pageCacheKey varchar(255) DEFAULT 'default' NOT NULL,  pageCacheTimeout VARCHAR(20) default NULL,  sortOrder int NOT NULL DEFAULT '-1',  isHidden int NOT NULL DEFAULT 0,  PRIMARY KEY  (SiNoVerId));DROP SEQUENCE cmSystemUser_seq;CREATE SEQUENCE cmSystemUser_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmSystemUser;CREATE TABLE cmSystemUser (  userName varchar(100) NOT NULL,  password varchar(100) NOT NULL,  firstName varchar(100) NOT NULL,  lastName varchar(100) NOT NULL,  email varchar(255) NOT NULL,  PRIMARY KEY  (userName));DROP SEQUENCE cmSystemUserRole_seq;CREATE SEQUENCE cmSystemUserRole_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmSystemUserRole;CREATE TABLE cmSystemUserRole (  userName varchar(100) NOT NULL,  roleName varchar(100) NOT NULL,  PRIMARY KEY  (userName, roleName));DROP SEQUENCE cmTransactionHistory_seq;CREATE SEQUENCE cmTransactionHistory_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmTransactionHistory;CREATE TABLE cmTransactionHistory (  transactionHistoryId integer  NOT NULL,  name varchar(200) NOT NULL,  transactionDateTime date  NOT NULL,  transactionTypeId integer default 0 NOT NULL,  transactionObjectId varchar(200) NOT NULL,  transactionObjectName varchar(200) NOT NULL,  systemUserName varchar(200) NOT NULL,  PRIMARY KEY  (transactionHistoryId));DROP SEQUENCE cmPublicationDetail_seq;CREATE SEQUENCE cmPublicationDetail_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmPublicationDetail;CREATE TABLE cmPublicationDetail (  publicationDetailId integer  NOT NULL,  publicationId integer default 0 NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  entityClass varchar(255) NOT NULL,  entityId integer default 0 NOT NULL,  creationDateTime date NOT NULL,  typeId integer default 0 NOT NULL,  publisher varchar(100) NOT NULL,  PRIMARY KEY  (publicationDetailId));DROP SEQUENCE cmEvent_seq;CREATE SEQUENCE cmEvent_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmEvent;CREATE TABLE cmEvent (  eventId integer  NOT NULL,  repositoryId integer default 0 NOT NULL,  name varchar(100) NOT NULL,  description varchar(255) NOT NULL,  entityClass varchar(255) NOT NULL,  entityId integer default 0 NOT NULL,  creationDateTime date NOT NULL,  typeId integer default 0 NOT NULL,  creator varchar(100) NOT NULL,  PRIMARY KEY  (eventId));DROP SEQUENCE cmRoleContentTypeDef_seq;CREATE SEQUENCE cmRoleContentTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRoleContentTypeDef;CREATE TABLE cmRoleContentTypeDef (  roleContentTypeDefId integer NOT NULL,  roleName varchar(100) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (roleContentTypeDefId));DROP SEQUENCE cmRoleProperties_seq;CREATE SEQUENCE cmRoleProperties_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRoleProperties;CREATE TABLE cmRoleProperties (  rolePropertiesId integer NOT NULL,  roleName varchar(100) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  value clob NOT NULL,  languageId integer default 0 NOT NULL,  PRIMARY KEY  (rolePropertiesId));DROP SEQUENCE cmUserContentTypeDef_seq;CREATE SEQUENCE cmUserContentTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmUserContentTypeDef;CREATE TABLE cmUserContentTypeDef (  userContentTypeDefId integer NOT NULL,  userName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (userContentTypeDefId));DROP SEQUENCE cmUserProperties_seq;CREATE SEQUENCE cmUserProperties_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmUserProperties;CREATE TABLE cmUserProperties (  userPropertiesId integer NOT NULL,  userName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  value clob NOT NULL,  languageId integer default 0 NOT NULL,  PRIMARY KEY  (userPropertiesId));DROP SEQUENCE cmAccessRight_seq;CREATE SEQUENCE cmAccessRight_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmAccessRight;CREATE TABLE cmAccessRight (  accessRightId integer NOT NULL,  parameters varchar(2048),  interceptionPointId integer NOT NULL,  PRIMARY KEY  (accessRightId));DROP SEQUENCE cmInterceptionPoint_seq;CREATE SEQUENCE cmInterceptionPoint_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmInterceptionPoint;CREATE TABLE cmInterceptionPoint (  interceptionPointId integer NOT NULL,  category varchar(100) NOT NULL,  name varchar(100) NOT NULL,  description varchar(1024) NOT NULL,  usesExtraDataForAccessControl integer default 0,  PRIMARY KEY  (interceptionPointId));DROP SEQUENCE cmIntPointInterceptor_seq;CREATE SEQUENCE cmIntPointInterceptor_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmIntPointInterceptor;CREATE TABLE cmIntPointInterceptor (  interceptionPointId integer NOT NULL,  interceptorId integer NOT NULL,  PRIMARY KEY  (interceptionPointId, interceptorId));DROP SEQUENCE cmInterceptor_seq;CREATE SEQUENCE cmInterceptor_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmInterceptor;CREATE TABLE cmInterceptor (  interceptorId integer NOT NULL,  name varchar(100) NOT NULL,  className varchar(255) NOT NULL,  description varchar(1024) NOT NULL,  PRIMARY KEY  (interceptorId));drop table OS_PROPERTYENTRY;drop table OS_WFENTRY;drop table OS_CURRENTSTEP;drop table OS_HISTORYSTEP;drop table OS_CURRENTSTEP_PREV;drop table OS_HISTORYSTEP_PREV;drop sequence hibernate_sequence;drop sequence seq_os_wfentry;drop sequence seq_os_currentsteps;CREATE TABLE OS_PROPERTYENTRY(	entity_name varchar(125) not null,	entity_id integer DEFAULT 0 not null,	entity_key varchar(150) not null,	key_type smallint,	boolean_val smallint,	string_val varchar(255),	long_val integer,	date_val date,	data_val blob,	double_val float,	int_val int,	primary key (entity_name, entity_id, entity_key));create table OS_WFENTRY(    ID integer not null,    NAME varchar(20),    STATE integer,    primary key (ID));create table OS_CURRENTSTEP(    ID integer not null,    ENTRY_ID integer,    STEP_ID integer,    ACTION_ID integer,    OWNER varchar(255),    START_DATE date,    FINISH_DATE date,    DUE_DATE date,    STATUS varchar(20),    CALLER varchar(255),    STEPINDEX integer DEFAULT 0,    primary key (ID),    foreign key (ENTRY_ID) references OS_WFENTRY(ID));create table OS_HISTORYSTEP(    ID integer not null,    ENTRY_ID integer,    STEP_ID integer,    ACTION_ID integer,    OWNER varchar(255),    START_DATE date,    FINISH_DATE date,    DUE_DATE date,    STATUS varchar(20),    CALLER varchar(255),    STEPINDEX integer DEFAULT 0,    primary key (ID),    foreign key (ENTRY_ID) references OS_WFENTRY(ID));create table OS_CURRENTSTEP_PREV(    ID integer not null,    PREVIOUS_ID integer not null,    primary key (ID, PREVIOUS_ID),    foreign key (ID) references OS_CURRENTSTEP(ID),    foreign key (PREVIOUS_ID) references OS_HISTORYSTEP(ID));create table OS_HISTORYSTEP_PREV(    ID integer not null,    PREVIOUS_ID integer not null,    primary key (ID, PREVIOUS_ID),    foreign key (ID) references OS_HISTORYSTEP(ID),    foreign key (PREVIOUS_ID) references OS_HISTORYSTEP(ID));create sequence hibernate_sequence;create sequence seq_os_wfentry minvalue 10 increment by 10;create sequence seq_os_currentsteps; DROP SEQUENCE cmCategory_seq;CREATE SEQUENCE cmCategory_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmCategory;CREATE TABLE cmCategory(	categoryId		integer NOT NULL,	name			varchar(100) NOT NULL,	displayName 	varchar(4000),	description		varchar(1024),	active 			integer default 1 NOT NULL,	parentId		integer,	PRIMARY KEY (categoryId));DROP SEQUENCE cmContentCategory_seq;CREATE SEQUENCE cmContentCategory_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmContentCategory;CREATE TABLE cmContentCategory(	contentCategoryId	integer NOT NULL,	attributeName		varchar(100) NOT NULL,	ContVerId			integer NOT NULL,	categoryId			integer NOT NULL,	PRIMARY KEY (contentCategoryId));DROP SEQUENCE cmUserPropDigAsset_seq;CREATE SEQUENCE cmUserPropDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmUserPropDigAsset;CREATE TABLE cmUserPropDigAsset (  userPropDigAssetId integer NOT NULL,  userPropertiesId integer NOT NULL,  digAssetId integer NOT NULL,  PRIMARY KEY  (userPropDigAssetId));DROP SEQUENCE cmRolePropDigAsset_seq;CREATE SEQUENCE cmRolePropDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRolePropDigAsset;CREATE TABLE cmRolePropDigAsset (  rolePropDigAssetId integer NOT NULL,  rolePropertiesId integer NOT NULL,  digAssetId integer NOT NULL,  PRIMARY KEY  (rolePropDigAssetId));DROP SEQUENCE cmGroupPropDigAsset_seq;CREATE SEQUENCE cmGroupPropDigAsset_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmGroupPropDigAsset;CREATE TABLE cmGroupPropDigAsset (  groupPropDigAssetId integer NOT NULL,  groupPropertiesId integer NOT NULL,  digAssetId integer NOT NULL,  PRIMARY KEY  (groupPropDigAssetId));DROP SEQUENCE cmPropertiesCategory_seq;CREATE SEQUENCE cmPropertiesCategory_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmPropertiesCategory;CREATE TABLE cmPropertiesCategory(	propertiesCategoryId integer NOT NULL,	attributeName		varchar(100) NOT NULL,	entityName			varchar(100) NOT NULL,	entityId			integer NOT NULL,	categoryId			integer NOT NULL,	PRIMARY KEY (propertiesCategoryId));DROP SEQUENCE cmRegistry_seq;CREATE SEQUENCE cmRegistry_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRegistry;CREATE TABLE cmRegistry(	registryId		            integer NOT NULL,	entityName		            varchar(100) NOT NULL,	entityId		            varchar(200) NOT NULL,	referenceType	            integer NOT NULL,	referencingEntityName		varchar(100) NOT NULL,	referencingEntityId		    varchar(200) NOT NULL,	referencingEntityComplName	varchar(100) NOT NULL,	referencingEntityComplId	varchar(200) NOT NULL,    PRIMARY KEY (registryId));DROP TABLE cmGroup;CREATE TABLE cmGroup (  groupName varchar(255) NOT NULL,  description varchar(1024) NOT NULL,  PRIMARY KEY  (groupName));DROP SEQUENCE cmGroupContTypeDef_seq;CREATE SEQUENCE cmGroupContTypeDef_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmGroupContTypeDef;CREATE TABLE cmGroupContTypeDef (  groupContTypeDefId integer NOT NULL,  groupName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  PRIMARY KEY  (groupContTypeDefId));DROP SEQUENCE cmGroupProperties_seq;CREATE SEQUENCE cmGroupProperties_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmGroupProperties;CREATE TABLE cmGroupProperties (  groupPropertiesId integer NOT NULL,  groupName varchar(255) NOT NULL,  contentTypeDefId integer default 0 NOT NULL,  value clob NOT NULL,  languageId integer NOT NULL,  PRIMARY KEY  (groupPropertiesId));DROP SEQUENCE cmSystemUserGroup_seq;CREATE SEQUENCE cmSystemUserGroup_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmSystemUserGroup;CREATE TABLE cmSystemUserGroup (  userName varchar(100) NOT NULL,  groupName varchar(200) NOT NULL,  PRIMARY KEY  (userName,groupName));DROP SEQUENCE cmAccessRightRole_seq;CREATE SEQUENCE cmAccessRightRole_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmAccessRightRole;CREATE TABLE cmAccessRightRole (  accessRightRoleId integer NOT NULL,  accessRightId integer NOT NULL,  roleName varchar(150) NOT NULL,  PRIMARY KEY  (accessRightRoleId));DROP SEQUENCE cmAccessRightGroup_seq;CREATE SEQUENCE cmAccessRightGroup_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmAccessRightGroup;CREATE TABLE cmAccessRightGroup (  accessRightGroupId integer NOT NULL,  accessRightId integer NOT NULL,  groupName varchar(150) NOT NULL,  PRIMARY KEY  (accessRightGroupId));DROP SEQUENCE cmAccessRightUser_seq;CREATE SEQUENCE cmAccessRightUser_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmAccessRightUser;CREATE TABLE cmAccessRightUser (  accessRightUserId integer NOT NULL,  accessRightId integer NOT NULL,  userName varchar(150) NOT NULL,  PRIMARY KEY  (accessRightUserId));DROP SEQUENCE cmWorkflowDefinition_seq;CREATE SEQUENCE cmWorkflowDefinition_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmWorkflowDefinition;CREATE TABLE cmWorkflowDefinition (  workflowDefinitionId integer NOT NULL,  name varchar(100) NOT NULL,  value clob NOT NULL,  PRIMARY KEY  (workflowDefinitionId));DROP SEQUENCE cmRedirect_seq;CREATE SEQUENCE cmRedirect_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmRedirect;CREATE TABLE cmRedirect(	id				integer NOT NULL,	url				varchar(1024) NOT NULL,	redirectUrl		varchar(1024) NOT NULL,	PRIMARY KEY (id));DROP SEQUENCE cmServerNode_seq;CREATE SEQUENCE cmServerNode_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmServerNode;CREATE TABLE cmServerNode (  serverNodeId integer NOT NULL,  name varchar(255) NOT NULL,  description varchar(1024) NOT NULL,  dnsName varchar(1024) NOT NULL,  PRIMARY KEY  (serverNodeId));DROP SEQUENCE cmFormEntry_seq;CREATE SEQUENCE cmFormEntry_seq START WITH 100 INCREMENT BY 1;DROP TABLE cmFormEntry;CREATE TABLE cmFormEntry(	id					number NOT NULL,	originAddress		VARCHAR2(1024) NOT NULL,	formName			VARCHAR2(255) NOT NULL,	formContentId		number NOT NULL,	userIP				VARCHAR2(20) NOT NULL,	userAgent			VARCHAR2(1024) NOT NULL,	PRIMARY KEY (id));DROP SEQUENCE cmFormEntryValue_seq;CREATE SEQUENCE cmFormEntryValue_seq START WITH 100 INCREMENT BY 1;DROP TABLE cmFormEntryValue;CREATE TABLE cmFormEntryValue(	id			number NOT NULL,	name		VARCHAR2(128) NOT NULL,	value		VARCHAR2(4000),	formEntryId	number NOT NULL,	PRIMARY KEY (id));DROP SEQUENCE cmFormEntryAsset_seq;CREATE SEQUENCE cmFormEntryAsset_seq START WITH 100 INCREMENT BY 1;DROP TABLE cmFormEntryAsset;CREATE TABLE cmFormEntryAsset(	id					number NOT NULL,	formEntryId			number NOT NULL,	fileName			VARCHAR2(255) NOT NULL,	fileSize			number NOT NULL,	assetKey			VARCHAR2(255) NOT NULL,	contentType			VARCHAR2(50) NOT NULL,	assetBlob 			blob NOT NULL,	PRIMARY KEY (id));DROP SEQUENCE cmSubscription_seq;CREATE SEQUENCE cmSubscription_seq START WITH 100 INCREMENT BY 1;DROP TABLE cmSubscription;CREATE TABLE cmSubscription(	id						number NOT NULL,	interceptionPointId		number NOT NULL,	name					VARCHAR2(100) NOT NULL,	isGlobal				integer default 0 NOT NULL,	entityName				VARCHAR2(100) default NULL,	entityId				VARCHAR2(200) default NULL,	userName				VARCHAR2(150) NOT NULL,	userEmail				VARCHAR2(150),	lastNotifiedDateTime	date NOT NULL WITH DEFAULT,	PRIMARY KEY (id));DROP SEQUENCE cmSubscriptionFilter_seq;CREATE SEQUENCE cmSubscriptionFilter_seq START WITH 100 INCREMENT BY 1;DROP TABLE cmSubscriptionFilter;CREATE TABLE cmSubscriptionFilter(	id						number NOT NULL,	subscriptionId			number NOT NULL,	filterType				VARCHAR2(50) NOT NULL,	filterCondition			VARCHAR2(255) NOT NULL,	isAndCondition			number default 0 NOT NULL,	PRIMARY KEY (id));DROP SEQUENCE cmInfoGlueProperties_seq;CREATE SEQUENCE cmInfoGlueProperties_seq START WITH 100000 INCREMENT BY 1;DROP TABLE cmInfoGlueProperties;CREATE TABLE cmInfoGlueProperties (  propertyId integer NOT NULL,  name varchar(100) NOT NULL,  value varchar(1024) NOT NULL,  PRIMARY KEY  (propertyId));INSERT INTO cmInfoGlueProperties(propertyId, name, value) VALUES  (1, 'version', '2.9');CREATE INDEX "qualServBindIdIX" ON cmQualifyer(servBindId);CREATE INDEX "sBindServDefIdIX" ON cmServBind(servDefId);CREATE INDEX "sBindAServBindIdIX" ON cmServBind(availServBindId);CREATE INDEX "sBindSNodeVerIdIX" ON cmServBind(siNoVerId);CREATE INDEX "contTypeNameIX" ON cmContentTypeDef(name);CREATE INDEX "contentVerContIdIX" ON cmContVer(contId);CREATE INDEX "sNodeVerSNodeIdIX" ON cmSiNoVer(siNoId);CREATE INDEX "contTypeDefIdIX" ON cmCont(contentTypeDefId);CREATE INDEX "parentContentIdIX" ON cmCont(parentContId);CREATE INDEX "publicationIdIX" ON cmPublicationDetail(publicationId);DROP INDEX "OS_CURRSTEP_OIX";DROP INDEX "OS_CURRSTEP_OCALL";DROP INDEX "OS_HISTSTEP_OIX";DROP INDEX "OS_HISTSTEP_CIX";CREATE INDEX "OS_CURRSTEP_OIX" ON OS_CURRENTSTEP(OWNER);CREATE INDEX "OS_CURRSTEP_OCALL" ON OS_CURRENTSTEP(CALLER);CREATE INDEX "OS_HISTSTEP_OIX" ON OS_HISTORYSTEP(OWNER);CREATE INDEX "OS_HISTSTEP_CIX" ON OS_HISTORYSTEP(CALLER);CREATE INDEX "refEntNameIndex" ON cmRegistry(referencingEntityName);CREATE INDEX "refEntIdIndex" ON cmRegistry(referencingEntityId);CREATE INDEX "entityNameIndex" ON cmRegistry(entityName);CREATE INDEX "entityIdIndex" ON cmRegistry(entityId);CREATE INDEX "refEntComplNameIx" ON cmRegistry(referencingEntityComplName);CREATE INDEX "refEntComplIdIx" ON cmRegistry(referencingEntityComplId);CREATE INDEX "attrNameCategoryId" on cmContentCategory (attributeName, categoryId);CREATE INDEX "categoryCVerIdIx" ON cmContentCategory(contVerId);CREATE INDEX "contVerDigDAssIdIx" ON cmContVerDigAsset(digAssetId);CREATE INDEX "contVerDigCVerIdIx" ON cmContVerDigAsset(contVerId);COMMIT;