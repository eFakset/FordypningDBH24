/* Delete er med for å kunne kjapt tømme og laste tabellene på nytt */
delete from post;
delete from bevegelse;
delete from konto;
delete from gruppe;

insert into konto values(1, 'Lønnskonto', 2345.56); /* Siste kolonne er Inngående balanse */
insert into konto values(2, 'Regningskonto', 11544.88);

insert into gruppe values(0,'Inntekt');
insert into gruppe values(1,'Bolig');
insert into gruppe values(2,'Mat og drikke');
insert into gruppe values(3,'Transport');
insert into gruppe values(4,'Klær');
insert into gruppe values(5,'Sparing');
insert into gruppe values(6,'Annet');
insert into gruppe values(7,'Gjeld');

/* Primary Key-kolonne for bevegelse må ha auto_increment 
 Hvis dere laster flere ganger , vil dere få problemer med post.bevegelse_fk 
 Verdien for neste nøkkelverdi kan endres via Alter Table på menyen for tabellen
 eller skrives: ALTER TABLE bevegelse AUTO_INCREMENT = 1 ;
 */

insert into bevegelse (konto_fk, bevegelse_tx, tidspunkt, bevegelse_bel) values(1, 'Lunsj i kantina','2023-11-01',56.00);
insert into post (bevegelse_fk, gruppe_fk, post_bel) values(1, 2,56.00);
insert into bevegelse (konto_fk, bevegelse_tx, tidspunkt, bevegelse_bel) values(2, 'Forfall lån', '2023-11-25', 11250.00);
insert into post (bevegelse_fk, gruppe_fk, post_bel) values(2, 1, 11250.00);
insert into bevegelse (konto_fk, bevegelse_tx, tidspunkt, bevegelse_bel) values(1, 'Extra','2023-11-05', 256.80);
insert into post (bevegelse_fk, gruppe_fk, post_bel) values(3, 2, 156.80);
insert into post (bevegelse_fk, gruppe_fk, post_bel) values(3, 6, 100.00);