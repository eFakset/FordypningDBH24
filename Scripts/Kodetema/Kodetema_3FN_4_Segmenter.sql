CREATE TABLE segment_inntekt (
  segment_inntekt_nr SMALLINT NOT NULL AUTO_INCREMENT,
  segment_inntekt_nv VARCHAR(45) NULL,
  PRIMARY KEY (segment_inntekt_nr));
  
  CREATE TABLE segment_avstand (
  segment_avstand_nr SMALLINT NOT NULL AUTO_INCREMENT,
  segment_avstand_nv VARCHAR(45) NULL,
  PRIMARY KEY (segment_avstand_nr));

insert into segment_inntekt (segment_inntekt_nv) select distinct hushold_inntekt from kunde order by 1;
insert into segment_avstand (segment_avstand_nv) select distinct avstand_butikk from kunde order by 1;

/* Rydder i kunde - FK mot segment */

ALTER TABLE kunde 
ADD COLUMN segment_inntekt_nr SMALLINT NOT NULL AFTER hushold_barn_ant;
ALTER TABLE kunde 
ADD COLUMN segment_avstand_nr SMALLINT NOT NULL AFTER segment_inntekt_nr;

update kunde set segment_inntekt_nr = (select segment_inntekt_nr from segment_inntekt where kunde.hushold_inntekt = segment_inntekt.segment_inntekt_nv);
update kunde set segment_avstand_nr = (select segment_avstand_nr from segment_avstand where kunde.avstand_butikk = segment_avstand.segment_avstand_nv);

ALTER TABLE kunde 
drop COLUMN hushold_inntekt, 
drop column avstand_butikk;

ALTER TABLE kunde
 ADD CONSTRAINT FK_kunde_segment_inntekt FOREIGN KEY FK_kunde_segment_inntekt (segment_inntekt_nr)
    REFERENCES segment_inntekt (segment_inntekt_nr)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE kunde
 ADD CONSTRAINT FK_kunde_segment_avstand FOREIGN KEY FK_kunde_segment_avstand (segment_avstand_nr)
    REFERENCES segment_avstand (segment_avstand_nr)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;    