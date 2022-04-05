-- SQLite
SELECT value FROM (
    SELECT A.row_num, B.col_num, (sum(A.value*B.value)) as value
    FROM A, B
    WHERE A.col_num = B.row_num
    GROUP BY A.row_num, B.col_num
)
WHERE row_num = 2 AND col_num = 3