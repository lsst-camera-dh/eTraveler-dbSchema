alter table HardwareRelationshipType add slot int unsigned NOT NULL DEFAULT 1 after componentTypeId;
alter table HardwareRelationshipType add description varchar(255) DEFAULT NULL after slot;

 alter table HardwareRelationshipType add CONSTRAINT cui1 UNIQUE INDEX (name, slot);

alter table Site modify name varchar(255) NOT NULL;
alter table Site modify jhVirtualEnv varchar(255) NOT NULL;
alter table Site modify jhOutputRoot varchar(255) NOT NULL;
alter table Location modify name varchar(255) NOT NULL;
alter table HardwareType modify name varchar(255) NOT NULL COMMENT "drawing number without revision if available";
alter table HardwareType modify description varchar(255) DEFAULT "";
alter table HardwareStatus modify name varchar(255) NOT NULL;
alter table HardwareStatus modify description varchar(255) NOT NULL;
alter table HardwareIdentifierAuthority modify name varchar(255) NOT NULL;
alter table HardwareRelationshipType modify name varchar(255) NOT NULL;
alter table InternalAction modify name varchar(255) NOT NULL;
alter table PermissionGroup modify name varchar(255) NOT NULL;
alter table Process modify name varchar(255) NOT NULL;
alter table Process modify userVersionString varchar(255) NULL COMMENT 'e.g. git tag';
alter table Process modify instructionsURL varchar(255);
alter table JobHarnessStep modify name varchar(255) NOT NULL; 
alter table ActivityFinalStatus modify name varchar(255) NOT NULL;
alter table PrerequisiteType modify name varchar(255) NOT NULL COMMENT "e.g. PROCESS_STEP, COMPONENT, CONSUMABLE, etc.";
alter table PrerequisitePattern modify name varchar(255) NOT NULL;
alter table PrerequisitePattern modify prereqUserVersionString varchar(255) NULL COMMENT "optional cut on PROCESS_STEP candidates";
alter table InputSemantics modify name varchar(255) NOT NULL;
alter table IntResultManual modify name varchar(255) NOT NULL COMMENT "use label field from inputPatternId";
alter table IntResultHarnessed modify name varchar(255) NOT NULL COMMENT "comes from schema";
alter table IntResultHarnessed modify schemaName varchar(255) NOT NULL;
alter table FloatResultManual modify name varchar(255) NOT NULL COMMENT "use label field from inputPatternId";
alter table FloatResultHarnessed modify name varchar(255) NOT NULL COMMENT "comes from schema";
alter table FloatResultHarnessed modify schemaName varchar(255) NOT NULL;
alter table FilepathResultManual modify name varchar(255) NOT NULL COMMENT "use label field from inputPatternId";
alter table FilepathResultHarnessed modify name varchar(255) NOT NULL COMMENT "comes from schema; it is always 'path'";
alter table FilepathResultHarnessed modify schemaName varchar(255) NOT NULL;
alter table StringResultManual modify name varchar(255) NOT NULL COMMENT "use label field from inputPatternId";
alter table StringResultHarnessed modify name varchar(255) NOT NULL COMMENT "comes from schema";
alter table StringResultHarnessed modify schemaName varchar(255) NOT NULL;

alter table ProcessEdge modify cond varchar(255);
alter table Hardware modify lsstId varchar(255) NOT NULL;
alter table Hardware modify manufacturer varchar(255) NOT NULL;
alter table Hardware modify model varchar(255) NOT NULL;
alter table HardwareIdentifier modify identifier varchar(255) NOT NULL;
alter table ExceptionType modify conditionString varchar(255) NOT NULL;
alter table InputPattern modify label varchar(255) COMMENT "required label to appear on form";
alter table InputPattern modify units varchar(255) DEFAULT "none";
alter table InputPattern modify description varchar(255) NULL COMMENT "if label is not sufficient";
alter table InputPattern modify choiceField varchar(255) NULL COMMENT "may be set to table.field, e.g. HardwareStatus.name";

INSERT into DbRelease  (major, minor, patch, status, createdBy, creationTS, lastModTS, remarks) values (0, 5, 3, 'TEST', 'jrb', UTC_TIMESTAMP(), UTC_TIMESTAMP(), 'Set most varchar lengths to 255; add HardwareRelationshipType.slot and unique key');