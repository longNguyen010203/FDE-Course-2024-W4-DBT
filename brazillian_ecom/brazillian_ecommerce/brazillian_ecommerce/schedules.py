from dagster_dbt import build_schedule_from_dbt_selection

from .assets import brazillian_ecom_dbt_assets

schedules = [
    build_schedule_from_dbt_selection(
        dbt_assets=[brazillian_ecom_dbt_assets],
        job_name="materialize_dbt_models",
        cron_schedule="*/5 * * * *",
        dbt_select="fqn:*",
    )
]