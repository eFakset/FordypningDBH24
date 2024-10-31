select concat('insert into kunde values(', kunde_nr, ',''', kunde_nv, ''',''', kommune_nv, ''',', konkurrenter_ant, ',''', 
			hushold_inntekt, ''',', hushold_voksne_ant, ',', hushold_barn_ant, ',''', avstand_butikk, ''');') as abc from kunde;
            
truncate table kunde;
insert into kunde values(1,'Sveinung Fredly','Tangen',8,'500k - 749k',2,0,'2,9km eller mindre');
insert into kunde values(2,'Lillian Solvik','Tangen',8,'750k - 998k',1,1,'3km - 4,9km');
insert into kunde values(3,'Even Gjermundsen','Tangen',8,'499k eller mindre',1,0,'2,9km eller mindre');
insert into kunde values(4,'Signe Bønsnes','Tangen',8,'750k - 998k',2,1,'2,9km eller mindre');
insert into kunde values(5,'Laura Klokkerplassen','Tangen',8,'500k - 749k',1,2,'9km eller mer');
insert into kunde values(6,'Petter Thomassen','Tangen',8,'999k eller mer',2,2,'9km eller mer');
insert into kunde values(7,'Syver Bønsnes','Kilen',5,'999k eller mer',2,0,'9km eller mer');
insert into kunde values(8,'Søren Tvetenstrand','Kilen',5,'499k eller mindre',2,1,'5km - 8,9km');
insert into kunde values(9,'Anders Eriksen','Kilen',5,'500k - 749k',1,1,'2,9km eller mindre');
insert into kunde values(10,'Oluf Berg','Kilen',5,'750k - 998k',2,1,'9km eller mer');
insert into kunde values(11,'Bjarne Gustavsen','Kilen',5,'999k eller mer',1,1,'2,9km eller mindre');
insert into kunde values(12,'Hilda Fuglesang','Kilen',5,'999k eller mer',1,1,'3km - 4,9km');
insert into kunde values(13,'Peder Kristoffersen','Alvheim',7,'500k - 749k',2,2,'2,9km eller mindre');
insert into kunde values(14,'Hanna Frøshaug','Alvheim',7,'999k eller mer',1,2,'3km - 4,9km');
insert into kunde values(15,'Torvald Nilsen','Alvheim',7,'500k - 749k',2,1,'5km - 8,9km');
insert into kunde values(16,'Nikolai Olsen','Alvheim',7,'999k eller mer',2,1,'3km - 4,9km');
insert into kunde values(17,'Gudrun Abrahamsen','Alvheim',7,'499k eller mindre',1,0,'2,9km eller mindre');
insert into kunde values(18,'Karen Strøm','Alvheim',7,'750k - 998k',1,2,'5km - 8,9km');
insert into kunde values(19,'Emma Hval','Alvheim',7,'750k - 998k',1,1,'3km - 4,9km'); 
     