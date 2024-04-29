from dagster import Definitions

from .assets import dbt, brazillian_ecom_dbt_assets
from .schedules import schedules


defs = Definitions(
    assets=[brazillian_ecom_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": dbt,
    },
)