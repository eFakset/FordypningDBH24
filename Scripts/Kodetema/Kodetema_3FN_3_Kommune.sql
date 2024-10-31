CREATE TABLE kommune (
  kommune_nr SMALLINT NOT NULL AUTO_INCREMENT,
  kommune_nv VARCHAR(45) NOT NULL,
  konkurrenter_ant smallint not null,
  PRIMARY KEY (kommune_nr));

insert into kommune (kommune_nv, konkurrenter_ant) select distinct kommune_nv, konkurrenter_ant from kunde order by 1;

/* Rydder i kunde etter kommune i egen tabell */

ALTER TABLE kunde 
ADD COLUMN kommune_nr SMALLINT NOT NULL AFTER hushold_barn_ant;

update kunde set kommune_nr = (select kommune_nr from kommune where kunde.kommune_nv = kommune.kommune_nv);

ALTER TABLE kunde 
drop COLUMN kommune_nv, 
drop column konkurrenter_ant;

ALTER TABLE kunde
 ADD CONSTRAINT FK_kunde_kommune FOREIGN KEY FK_kunde_kommune (kommune_nr)
    REFERENCES kommune (kommune_nr)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;