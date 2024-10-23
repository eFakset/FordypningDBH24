select concat('insert into handel values(', handel_nr, ', ''', tidspunkt, ''', ', butikk_nr, ', ', kasse_nr, ', ', kunde_nr, ', ', handel_bel, ');')
from handel;

select concat('insert into varelinje values(', handel_nr, ',', varelinje_nr, ',', vare_nr, ',', enhet_ant, ',', enhetpris_bel, ',', varelinje_bel, ');')
from varelinje;

select concat('insert into bonus values(', handel_nr, ',', varegruppe_nr, ',', bonus_bel, ');')
from bonus;