create table segmenttype
(
	segmenttype_nr smallint not null,
	segmenttype_nv varchar(45),
  PRIMARY KEY (segmenttype_nr));
  
insert into segmenttype values (1, 'Inntekt');
insert into segmenttype values (2, 'Avstand');

create table segment
(
	segment_nr smallint not null auto_increment,
    segmenttype_nr smallint not null,
    segment_nv varchar(45) not null,
  PRIMARY KEY (segment_nr));
  
ALTER TABLE segment
 ADD CONSTRAINT FK_segment_segmenttype FOREIGN KEY FK_segment_segmenttype (segmenttype_nr)
    REFERENCES segmenttype (segmenttype_nr)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;   
  
insert into segment (segmenttype_nr, segment_nv) select distinct 1, hushold_inntekt from kunde order by 2;
insert into segment (segmenttype_nr, segment_nv) select distinct 2, avstand_butikk from kunde order by 2;  

create table kundesegment
(
	kunde_nr int not null,
    segmenttype_nr smallint not null,
    segment_nr smallint not null,
  PRIMARY KEY (kunde_nr, segment_nr));

insert into kundesegment 
select kunde_nr, 1, segment_nr 
from kunde, segment
where segmenttype_nr = 1 and hushold_inntekt = segment_nv;
insert into kundesegment 
select kunde_nr, 2, segment_nr 
from kunde, segment
where segmenttype_nr = 2 and avstand_butikk = segment_nv;

ALTER TABLE kundesegment
 ADD CONSTRAINT FK_kundesegment_kunde FOREIGN KEY FK_kundesegment_kunde (kunde_nr)
    REFERENCES kunde (kunde_nr)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT; 
    
ALTER TABLE kundesegment
 ADD CONSTRAINT FK_kundesegment_segment FOREIGN KEY FK_kundesegment_segment (segment_nr)
    REFERENCES segment (segment_nr)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;      

/* Rydder i kunde */

ALTER TABLE KUNDE
	DROP COLUMN hushold_inntekt,
    DROP COLUMN avstand_butikk
