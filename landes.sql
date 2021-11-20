IF NOT EXISTS(select 1 from ijps.mst_jrnl_meta_key_dtl where keyid=14 and keyname='isLandesJrnl')
BEGIN
set IDENTITY_INSERT ijps.mst_jrnl_meta_key_dtl ON
insert into ijps.mst_jrnl_meta_key_dtl (keyid,keyname,Datatype,UpdatedBy,UpdatedDate,isActive)
values(14,'isLandesJrnl',bit,1,getdate(),1)
set IDENTITY_INSERT ijps.mst_jrnl_meta_key_dtl OFF
END

IF NOT EXISTS(select 1 from ijps.mst_jrnl_meta_key_dtl where keyid=15 and keyname='LandesJrnlPE')
BEGIN
set IDENTITY_INSERT ijps.mst_jrnl_meta_key_dtl ON
insert into ijps.mst_jrnl_meta_key_dtl (keyid,keyname,Datatype,UpdatedBy,UpdatedDate,isActive)
values(15,'LandesJrnlPE','nvarchar,1,getdate(),1)
set IDENTITY_INSERT ijps.mst_jrnl_meta_key_dtl OFF
END


IF NOT EXISTS (select 1 from  ips.trn_tomail_dtl where mailid=169 and Condition=';landesJrnlPE;')
BEGIN
insert into  ips.trn_tomail_dtl values(169,'cc',';landesJrnlPE;')
END


IF NOT EXISTS (select 1 from  ips.trn_tomail_dtl where mailid=170 and Condition=';landesJrnlPE;')
BEGIN
insert into  ips.trn_tomail_dtl values(170,'cc',';landesJrnlPE;')
END

IF NOT EXISTS (select 1 from  ips.trn_tomail_dtl where mailid=174 and Condition=';landesJrnlPE;')
BEGIN
insert into  ips.trn_tomail_dtl values(174,'cc',';landesJrnlPE;')
END

IF NOT EXISTS (select 1 from  ips.trn_tomail_dtl where mailid=177 and Condition=';landesJrnlPE;')
BEGIN
insert into  ips.trn_tomail_dtl values(177,'cc',';landesJrnlPE;')
END

IF NOT EXISTS (select 1 from  ips.trn_tomail_dtl where mailid=191 and Condition=';landesJrnlPE;')
BEGIN
insert into  ips.trn_tomail_dtl values(191,'cc',';landesJrnlPE;')
END
