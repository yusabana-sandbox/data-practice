select employee_id
from public.employee_names
-- where true  -- これだと検索されてしまうのでテストがfailする
where false -- これだと検索されないのでテストがsuccessする
