insert into kunde (kunde_nr, kunde_nv) select kunde_nr, kunde_nv from dagligvare.kunde where kunde_nr between 1 and 999;

update kunde set kommune_nv = 'Tangen', konkurrenter_ant = 8 where kunde_nr < 7;
update kunde set kommune_nv = 'Kilen', konkurrenter_ant = 5 where kunde_nr between 7 and 12;
update kunde set kommune_nv = 'Alvheim', konkurrenter_ant = 7 where kunde_nr > 12;
UPDATE kunde SET hushold_inntekt = '499k eller mindre' where kunde_nr in (3,8,17,18,9);
UPDATE kunde SET hushold_inntekt = '500k - 749k' where kunde_nr in (1,5,9,13,15);
UPDATE kunde SET hushold_inntekt = '750k - 998k' where kunde_nr in (2,10,18,19,4);
UPDATE kunde SET hushold_inntekt = '999k eller mer' where hushold_inntekt is null;
UPDATE kunde SET hushold_voksne_ant = 1 where substr(kunde_nv, 1, 1) < 'N';
UPDATE kunde SET hushold_voksne_ant = 2 where hushold_voksne_ant is null;
UPDATE kunde SET hushold_voksne_ant = 1 where substr(kunde_nv, 1, 1) < 'N';
UPDATE kunde SET hushold_barn_ant = 2 where substr(kunde_nv, 2, 1) < 'h';
UPDATE kunde SET hushold_barn_ant = 1 where substr(kunde_nv, 2, 1) < 't' and hushold_barn_ant is null;
UPDATE kunde SET hushold_barn_ant = 0 where hushold_barn_ant is null;
UPDATE kunde SET avstand_butikk = '2,9km eller mindre' where substr(kunde_nv, 3, 1) < 'h';
UPDATE kunde SET avstand_butikk = '3km - 4,9km' where substr(kunde_nv, 3, 1) < 'o' and avstand_butikk is null;
UPDATE kunde SET avstand_butikk = '5km - 8,9km' where substr(kunde_nv, 3, 1) < 't' and avstand_butikk is null;
UPDATE kunde SET avstand_butikk = '9km eller mer' where avstand_butikk is null;


