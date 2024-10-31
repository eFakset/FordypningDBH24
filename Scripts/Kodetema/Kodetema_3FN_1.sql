drop table if exists segment_avstand;
drop table if exists segment_inntekt;
drop table if exists kundesegment;
drop table if exists segment;
drop table if exists segmenttype;
drop table if exists kunde;
drop table if exists kommune;

CREATE TABLE kunde (
  kunde_nr INT NOT NULL,
  kunde_nv VARCHAR(255) NOT NULL,
  kommune_nv VARCHAR(45) NULL COMMENT 'Kundens bostedskommune',
  konkurrenter_ant SMALLINT NULL COMMENT 'Antall konkurrenter innen dagligvare i kommunen',
  hushold_inntekt VARCHAR(45) NULL COMMENT 'Inntektssegment',
  hushold_voksne_ant SMALLINT NULL,
  hushold_barn_ant SMALLINT NULL,
  avstand_butikk VARCHAR(45) NULL COMMENT 'Avstandssegment fra kunden til vår butikk',
  PRIMARY KEY (kunde_nr));
