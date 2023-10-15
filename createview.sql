-- Active: 1697386487101@@127.0.0.1@5432@postgres@public
CREATE VIEW gmv AS
SELECT
    pu.store_id,
    pr.category_id,
    SUM(pi.product_price * pi.product_count) AS sales_sum
FROM
    purchase_items pi
JOIN
    products pr ON pi.product_id = pr.product_id
JOIN
    purchases pu ON pi.purchase_id = pu.purchase_id
GROUP BY
    pu.store_id,
    pr.category_id;