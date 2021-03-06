-- Drop all the stored procedures
drop procedure generic_hardwareGroups;
drop procedure generic_subsystem;

drop procedure NCR_hardwareGroups;
drop procedure NCR_subsystem;

drop procedure hardwareType_hardwareGroups;
drop procedure hardwareType_subsystem;

drop procedure hardware_hardwareGroups;
drop procedure hardware_subsystem;

drop procedure label_hardwareGroups;
drop procedure label_subsystem;

drop procedure run_hardwareGroups;
drop procedure run_subsystem;

drop procedure travelerType_hardwareGroups;
drop procedure travelerType_subsystem;

DROP TABLE IF EXISTS LabelCurrent;
DROP TABLE IF EXISTS LabelHistory;
DROP TABLE IF EXISTS RunNumber;
DROP TABLE IF EXISTS SignatureResultManual;
DROP TABLE IF EXISTS StringResultManual;
DROP TABLE IF EXISTS StringResultHarnessed;
DROP TABLE IF EXISTS FilepathResultManual;
DROP TABLE IF EXISTS FilepathResultHarnessed;
DROP TABLE IF EXISTS IntResultManual;
DROP TABLE IF EXISTS IntResultHarnessed;
DROP TABLE IF EXISTS FloatResultManual;
DROP TABLE IF EXISTS FloatResultHarnessed;
DROP TABLE IF EXISTS TextResultManual;
DROP TABLE IF EXISTS InputPattern;
DROP TABLE IF EXISTS InputSemantics;
DROP TABLE IF EXISTS Prerequisite;
DROP TABLE IF EXISTS PrerequisitePattern;
DROP TABLE IF EXISTS PrerequisiteType;
DROP TABLE IF EXISTS JobStepHistory;
DROP TABLE IF EXISTS StopWorkHistory;
DROP TABLE IF EXISTS ProcessRelationshipTag;
DROP TABLE IF EXISTS Exception;
DROP TABLE IF EXISTS MultiRelationshipHistory;
DROP TABLE IF EXISTS MultiRelationshipAction;
DROP TABLE IF EXISTS ActivityStatusHistory;
DROP TABLE IF EXISTS HardwareStatusHistory;
DROP TABLE IF EXISTS HardwareLocationHistory;
DROP TABLE IF EXISTS BatchedInventoryHistory;
DROP TABLE IF EXISTS MultiRelationshipSlot;
DROP TABLE IF EXISTS MultiRelationshipSlotType;
DROP TABLE IF EXISTS MultiRelationshipType;
DROP TABLE IF EXISTS Activity;
DROP TABLE IF EXISTS JobHarness;
DROP TABLE IF EXISTS TravelerTypeStateHistory;
DROP TABLE IF EXISTS ActivityFinalStatus;
DROP TABLE IF EXISTS JobHarnessStep;
DROP TABLE IF EXISTS InternalAction;
DROP TABLE IF EXISTS PermissionGroup;
DROP TABLE IF EXISTS ExceptionType;
DROP TABLE IF EXISTS TravelerType;
DROP TABLE IF EXISTS TravelerTypeState;
DROP TABLE IF EXISTS ProcessEdge;
DROP TABLE IF EXISTS Process;
DROP TABLE IF EXISTS Label;
DROP TABLE IF EXISTS LabelGroup;
DROP TABLE IF EXISTS Labelable;
DROP TABLE IF EXISTS HardwareRelationship;
DROP TABLE IF EXISTS HardwareIdentifier;
DROP TABLE IF EXISTS HardwareIdentifierAuthority;
DROP TABLE IF EXISTS Hardware;
DROP TABLE IF EXISTS Location;
DROP TABLE IF EXISTS Site;
DROP TABLE IF EXISTS HardwareTypeGroupMapping;
DROP TABLE IF EXISTS HardwareRelationshipType;
DROP TABLE IF EXISTS HardwareGroup;
DROP TABLE IF EXISTS HardwareType;
DROP TABLE IF EXISTS HardwareStatus;
DROP TABLE IF EXISTS Subsystem;
DROP TABLE IF EXISTS DbRelease;

