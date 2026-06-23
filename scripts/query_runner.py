import sqlite3
import pandas as pd

conn = sqlite3.connect(r"C:\Users\gudla\Downloads\superstore.db")

query = """
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM cleaned_superstore
GROUP BY Category
ORDER BY Total_Sales DESC
"""

result = pd.read_sql(query, conn)

print(result)

conn.close()
