SELECT product_name,
  SUM(t.total_amount) AS total_revenue
FROM products AS p
JOIN transactions AS t
  ON p.product_id = t.product_id
 GROUP BY  p.product_id
 ORDER BY total_revenue DESC
 LIMIT 5
