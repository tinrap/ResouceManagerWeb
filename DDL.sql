drop table instance;
drop table cloud;

create table cloud (cloudid INT NOT NULL, primary key(cloudid), name varchar(20), publicip varchar(20),privateip varchar(20), geolocation varchar(20));

insert into cloud values(1, "US-WEST","125.250.100.0" ,"55.22.10.0" ,"US-WEST");
insert into cloud values(2, "US-EAST","135.100.100.0" ,"65.22.10.0" ,"US-EAST");
insert into cloud values(3, "US-MIDWEST","145.350.100.0" ,"75.22.10.0" ,"US-MIDWEST");
insert into cloud values(4, "CHINA","200.250.100.0" ,"85.22.10.0" ,"CHINA");
insert into cloud values(5, "INDIA","300.250.100.0" ,"95.22.10.0" ,"INDIA");

select * from cloud;

create table instance (instanceid INT NOT NULL, primary key(instanceid), cloudid INT,
INDEX par_ind (cloudid),FOREIGN KEY (cloudid) REFERENCES cloud(cloudid) ON DELETE CASCADE  ,
name varchar(20), status varchar(20), type varchar(20),
 os varchar(20), cpu int, memory int,storage int, 
publicip varchar(20),privateip varchar(20), 
uptime time, userid int);

select * from instance;

insert into instance values(1, 1, "c1mi1i1", "Active", "Mobile", "iOS", 2, 512, 24, "125.250.100.1" ,"55.22.10.1" ,"01:23:11", null);
insert into instance values(2, 2, "c2mi1i1", "Active", "Mobile", "iOS", 4, 1024, 24, "135.100.100.1" ,"65.22.10.1" ,"00:02:10", null);
insert into instance values(3, 3, "c3mi1i1", "Active", "Mobile", "iOS", 1, 2048, 24, "145.350.100.1" ,"75.22.10.1" ,"01:10:10", null);
insert into instance values(4, 4, "c4mi1i1", "Active", "Mobile", "iOS", 4, 1024, 24, "200.250.100.1" ,"85.22.10.1" ,"00:08:10", null);
insert into instance values(5, 5, "c5mi1i1", "Active", "Mobile", "iOS", 1, 512, 24, "300.250.100.1" ,"95.22.10.1" ,"03:23:19", null);

insert into instance values(6, 1, "c1mi2a1", "Active", "Mobile", "Android", 4, 2048, 24, "125.250.100.2" ,"55.22.10.2" ,"01:56:03", null);
insert into instance values(7, 2, "c2mi2a1", "Active", "Mobile", "Android", 2, 2048, 24, "135.100.100.2" ,"65.22.10.2" ,"02:43:34", null);
insert into instance values(8, 3, "c3mi2a1", "Active", "Mobile", "Android", 1, 1024, 24, "145.350.100.2" ,"75.22.10.2" ,"03:29:04", null);
insert into instance values(9, 4, "c4mi2a1", "Active", "Mobile", "Android", 2, 512, 24, "200.250.100.2" ,"85.22.10.2" ,"03:12:45", null);
insert into instance values(10, 5, "c5mi2a1", "Active", "Mobile", "Android", 1, 512, 24, "300.250.100.2" ,"95.22.10.2" ,"00:14:13", null);

insert into instance values(11, 1, "c1ci1l1", "Active", "Computer", "Linux", 4, 1024, 24, "125.250.100.3" ,"55.22.10.3" ,"01:15:06", null);
insert into instance values(12, 2, "c2ci1l1", "Active", "Computer", "Linux", 2, 2048, 24, "135.100.100.3" ,"65.22.10.3" ,"00:00:09", null);
insert into instance values(13, 3, "c3ci1l1", "Active", "Computer", "Linux", 1, 1024, 24, "145.350.100.3" ,"75.22.10.3" ,"00:00:08", null);
insert into instance values(14, 4, "c4ci1l1", "Active", "Computer", "Linux", 4, 512, 24, "200.250.100.3" ,"85.22.10.3" ,"00:00:45", null);
insert into instance values(15,5, "c5ci1l1", "Active", "Computer", "Linux", 2, 512, 24, "300.250.100.3" ,"95.22.10.3" ,"00:00:56", null);

insert into instance values(16, 1, "c1ci2w1", "Active", "Computer", "Windows", 4, 512, 24, "125.250.100.4" ,"55.22.10.4" ,"00:55:23", null);
insert into instance values(17, 2, "c2ci2w1", "Active", "Computer", "Windows", 2, 1024, 24, "135.100.100.4" ,"65.22.10.4" ,"00:31:45", null);
insert into instance values(18, 3, "c3ci2w1", "Active", "Computer", "Windows", 1, 2048, 24, "145.350.100.4" ,"75.22.10.4" ,"00:22:53", null);
insert into instance values(19, 4, "c4ci2w1", "Active", "Computer", "Windows", 1, 1024, 24, "200.250.100.4" ,"85.22.10.4" ,"00:23:23", null);
insert into instance values(20,5, "c5ci2w1", "Active", "Computer", "Windows", 2, 1024, 24, "300.250.100.4" ,"95.22.10.4" ,"00:19:15", null);

drop table user;

create table user (userid INT NOT NULL, primary key(userid), 
 name varchar(20), creditcard varchar(20), emailid varchar(20),
 phone varchar(20), totalbill double, paidbill double);

select sum(totalbill) from user;

insert into user values(1, "Sudip" , "1234567890" , "sudip@test.com", "1234567890" , 1546.21, 0.0);
insert into user values(2, "Kumar" , "9876543210" , "kumar@test.com", "9876543210" , 36.89, 0.0);
insert into user values(3, "John" , "1234567890" , "sudip@test.com", "1234567890" , 234.54, 0.0);
insert into user values(4, "Emily" , "9876543210" , "kumar@test.com", "9876543210" , 76.89, 0.0);
insert into user values(5, "Philip" , "1234567890" , "sudip@test.com", "1234567890" , 67.75, 0.0);
insert into user values(6, "Sandra" , "9876543210" , "kumar@test.com", "9876543210" , 78.89, 0.0);
insert into user values(7, "Priya" , "1234567890" , "sudip@test.com", "1234567890" , 23.09, 0.0);
insert into user values(8, "Tom" , "9876543210" , "kumar@test.com", "9876543210" , 653.67, 0.0);
insert into user values(9, "Harry" , "1234567890" , "sudip@test.com", "1234567890" , 43.54, 0.0);
insert into user values(10, "Arnold" , "9876543210" , "kumar@test.com", "9876543210" , 67.74, 0.0);





select * from user ;

drop table rate;
create table rate  (rateid INT NOT NULL, primary key(rateid), 
type varchar(20), component varchar(20), costpermin double);

insert into rate values (1, "Mobile" , "cpu" , 0.07 );
insert into rate values (2, "Mobile" , "memory" , 0.06 );
insert into rate values (3, "Mobile" , "storage" , 0.05 );
insert into rate values (4, "Computer" , "cpu" , 0.05 );
insert into rate values (5, "Computer" , "memory" , 0.04 );
insert into rate values (6, "Computer" , "storage" , 0.03 );

select * from rate ;
