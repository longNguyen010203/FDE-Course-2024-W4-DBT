import os

from dagster import Definitions
from dagster_dbt import DbtCliResource

from .assets import brazillian_ecom_dbt_assets
from .schedules import schedules
from .assets import dbt_project_dir


defs = Definitions(
    assets=[brazillian_ecom_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=os.fspath(dbt_project_dir)),
    },
)