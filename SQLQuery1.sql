create database pps
use pps

create table roles
(id varchar(15) primary key,role varchar(25),password varchar(15),dept varchar(30),fname varchar(50),
doj date,phone bigint,mailid varchar(50),address varchar(50))

insert into roles values('admin','admin','admin',null,null,null,null,null,null);
select * from roles
delete from roles where id='';

create proc proc_roleadd(@a varchar(15),@b varchar(25),@c varchar(15),@d varchar(30),@e varchar(50),
@f date,@g bigint,@h varchar(50),@i varchar(50)) as begin insert into roles values(@a,@b,@c,@d,@e,@f,@g,@h,@i) end


create proc proc_roledelete(@a varchar(15)) as begin delete from roles where id=@a end;
create proc proc_roleupadate(@a varchar(15),@b varchar(25),@c varchar(15),@d varchar(30),@e varchar(50),
@f date,@g bigint,@h varchar(50),@i varchar(50)) as begin 
update roles set Role=@b,Password=@c,Department=@d,Name=@e,[Date of Joining]=@f,Phone=@g,[Mail ID]=@h,Address=@i where Id=@a end

create table manpower(Id int primary key,Name varchar(30),Trade varchar(25),Grade varchar(10),Section varchar(15),[Date of Joining] date,Phone bigint,Address varchar(50))

create proc proc_addmp(@a int,@b varchar(30),@c varchar(25),@d varchar(10),@e varchar(15),@f date,@g bigint,@h varchar(50)) as begin
insert into manpower values(@a,@b,@c,@d,@e,@f,@g,@h) end

select * from manpower where id=5001


create proc proc_mpdel(@a int) as begin
delete from manpower where id=@a end;

create proc proc_updatemp(@a int,@b varchar(30),@c varchar(25),@d varchar(10),@e varchar(15),@f date,@g bigint,@h varchar(50)) as begin
update manpower set Name=@b,Trade=@c,Grade=@d,Section=@e,[Date of Joining]=@f,Phone=@g,Address=@h where id=@a end

select count(Trade) from manpower where trade='supervisor'

