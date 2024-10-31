/* Kommune og segment fra egne tabeller */

select kunde.kunde_nr, kunde_nv, kommune_nv, konkurrenter_ant, si.segment_nv SegmentInntekt, sa.segment_nv SegmentAvstand
from kunde
inner join kommune using (kommune_nr)
inner join kundesegment ksi on kunde.kunde_nr = ksi.kunde_nr and ksi.segmenttype_nr = 1
inner join segment si on si.segment_nr = ksi.segment_nr
inner join kundesegment ksa on kunde.kunde_nr = ksa.kunde_nr and ksa.segmenttype_nr = 2
inner join segment sa on sa.segment_nr = ksa.segment_nr;
