/* Alle verdier fra kunde */

select kunde_nr, kunde_nv, kommune_nv, konkurrenter_ant, segment_inntekt_nv, segment_avstand_nv
from kunde
inner join kommune using (kommune_nr)
inner join segment_inntekt using (segment_inntekt_nr)
inner join segment_avstand using (segment_avstand_nr)