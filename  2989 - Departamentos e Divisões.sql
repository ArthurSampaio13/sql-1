SELECT
    t1.nome AS Departamento,
    t2.nome AS Divisao,
    ROUND(AVG((salarios.salario - descontos.descontos)), 2) AS media,
    ROUND(MAX((salarios.salario - descontos.descontos)), 2) AS maior
FROM
    departamento t1
    LEFT JOIN divisao t2 ON t1.cod_dep = t2.cod_dep
    LEFT JOIN empregado t3 ON t2.cod_divisao = t3.lotacao_div
    LEFT JOIN (
        SELECT
            t5.matr,
            COALESCE(SUM(t6.valor), 0) AS salario
        FROM
            empregado t5
            LEFT JOIN emp_venc t7 ON t5.matr = t7.matr
            LEFT JOIN vencimento t6 ON t7.cod_venc = t6.cod_venc
        GROUP BY
            t5.matr
    ) salarios ON t3.matr = salarios.matr
    LEFT JOIN (
        SELECT
            t8.matr,
            COALESCE(SUM(t9.valor), 0) AS descontos
        FROM
            empregado t8
            LEFT JOIN emp_desc t10 ON t8.matr = t10.matr
            LEFT JOIN desconto t9 ON t10.cod_desc = t9.cod_desc
        GROUP BY
            t8.matr
    ) descontos ON t3.matr = descontos.matr
GROUP BY
    t1.nome, t2.nome, t2.cod_divisao
ORDER BY
    media DESC;