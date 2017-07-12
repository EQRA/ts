--step 1 to build initial cohort contracts/seats/users
create table cohort
as
select
f1.*,
f2.*,
f3.*
from dim_contracts f1
left outer join dim_seats f2 on f1.contract_id=f2.contract_id
left outer join users f3 on f2.seat_id=f3.seat_id;
