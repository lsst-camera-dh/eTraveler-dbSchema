insert into RunNumber (rootActivityId, createdBy, creationTS) select rootActivityId, 'jrb', UTC_TIMESTAMP() from Activity where (parentActivityId is NULL)  order by id;
update RunNumber as R, Exception as E set R.runNumber = CONCAT(R.id, "T")  where R.runNumber is NULL and R.rootActivityId NOT IN(E.NCRActivityId);

--  Cannot update table appearing in subquery, so make temp copy of RunNumber rows needing to be filled
create temporary table Temprun (tempid int, temprn varchar(15), tempRAI int, bigRoot int);
insert into Temprun (tempid, temprn, tempRAI, bigRoot) (select R.id,R.runNumber,R.rootActivityId,A.rootActivityId from RunNumber R, Exception E, Activity A where R.runNumber is NULL and R.rootActivityId = E.NCRActivityId and A.id=E.exitActivityId);

update RunNumber,Temprun set Temprun.temprn=RunNumber.runNumber where Temprun.bigRoot=RunNumber.rootActivityId;

update RunNumber,Temprun set RunNumber.runNumber=Temprun.temprn where Temprun.tempid=RunNumber.id;



