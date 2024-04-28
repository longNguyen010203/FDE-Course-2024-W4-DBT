import os
from pathlib import Path

from dagster import AssetExecutionContext
from dagster_dbt import DbtCliResource, dbt_assets


dbt_project_dir = Path(__file__).joinpath("..", "..", "..").resolve()
dbt = DbtCliResource(project_dir=os.fspath(dbt_project_dir))
dbt_manifest_path = dbt_project_dir.joinpath("target", "manifest.json")


@dbt_assets(manifest=dbt_manifest_path)
def brazillian_ecom_dbt_assets(context: AssetExecutionContext, dbt: DbtCliResource):
    yield from dbt.cli(["build"], context=context).stream()
    