DELETE FROM trans.training_participant;
dbcc CHECKIDENT("trans.training_participant","RESEED",0);

DELETE FROM trans.training_facilitator;
dbcc CHECKIDENT("trans.training_facilitator","RESEED",0);

DELETE FROM trans.training;
dbcc CHECKIDENT("trans.training","RESEED",0);

DELETE FROM param.person;
dbcc CHECKIDENT("param.person","RESEED",0);

DELETE FROM param.organization;
dbcc CHECKIDENT("param.organization","RESEED",0);

DELETE FROM param.location;
dbcc CHECKIDENT("param.location","RESEED",0);

DELETE FROM param.job_title;
dbcc CHECKIDENT("param.job_title","RESEED",0);

DELETE FROM param.county;
dbcc CHECKIDENT("param.county","RESEED",0);

DELETE FROM param.affiliation;
dbcc CHECKIDENT("param.affiliation","RESEED",0);
