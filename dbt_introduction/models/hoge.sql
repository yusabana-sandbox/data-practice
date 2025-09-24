select *
from {{ source('staging', 'employees') }}
