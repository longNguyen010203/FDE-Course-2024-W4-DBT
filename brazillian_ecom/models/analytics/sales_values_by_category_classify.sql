{{ config(materialized="table") }}

SELECT
    *
    , {{ classify_abc("total_bills") }} as class

FROM {{ ref("sales_values_by_category") }}