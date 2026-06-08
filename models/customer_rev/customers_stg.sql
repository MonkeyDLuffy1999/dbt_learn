{{ config(materialized='view') }}

SELECT *, concat(FirstName, ' ', LastName) as CustomerName FROM {{ source('landing', 'customers') }}