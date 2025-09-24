{{
    config(
        materialized='incremental',
		alias='employee_names',
    )
}}

select
	"employee_id",
	concat("first_name", ' ', "last_name") as full_name
from
	"dbt_training"."raw"."employees"
where first_name = '{{ var("hoge_type", "taro") }}'

{% if is_incremental() %}

	and "employee_id" not in (select "employee_id" from {{ this }})

{% endif %}
