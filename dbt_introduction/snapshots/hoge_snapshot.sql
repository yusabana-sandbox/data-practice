{% snapshot jobs_snapshot %}

{{
  config(
    target_database='dbt_training',
    target_schema='snapshots',
    unique_key='job_id',
    strategy='timestamp',
    updated_at='loaded_at',
  )
}}

select * from {{ source('staging', 'jobs') }}

{% endsnapshot %}
