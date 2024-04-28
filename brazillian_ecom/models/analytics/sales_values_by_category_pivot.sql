{{ config(materialized="table") }}

SELECT 
    category
    , {{ dbt_utils.pivot(
            'monthly',
            dbt_utils.get_column_values(
                ref("sales_values_by_category"),
                'monthly',
                order_by='count(*) asc'
            ),
            then_value='total_bills'
        )
    }}

FROM {{ ref("sales_values_by_category") }}
GROUP BY category
