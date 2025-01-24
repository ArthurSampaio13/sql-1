# SQL-1

## Sobre o Projeto
Este repositório contém uma série de consultas SQL desenvolvidas para diferentes cenários e propósitos, com foco na prática e no aperfeiçoamento das habilidades em SQL. Cada arquivo aborda um caso específico e explora diferentes conceitos, como junções, subconsultas, agregações, ordenação, e tratamento de dados.

## Tecnologias Utilizadas
- **SQL:** Linguagem de consulta estruturada utilizada para interação com bancos de dados relacionais.

## Descrições dos Arquivos

### `2603 - Endereço dos Clientes.sql`
Consulta que retorna os nomes e ruas dos clientes que residem na cidade de Porto Alegre.
- **Técnicas:** Filtros com `WHERE`.

### `2616 - Nenhuma Locação.sql`
Consulta que retorna os clientes que não realizaram nenhuma locação.
- **Técnicas:** Subconsulta com `NOT IN`.

### `2738 - Concurso.sql`
Consulta que calcula a média ponderada de candidatos em um concurso, utilizando pesos diferentes para cada critério de avaliação.
- **Técnicas:** Junções com `LEFT JOIN`, cálculo de média ponderada, arredondamento com `ROUND`, e ordenação com `ORDER BY`.

### `2989 - Departamentos e Divisões.sql`
Consulta que calcula a média e o maior valor líquido (salário menos descontos) por departamento e divisão.
- **Técnicas:** Agregações com `AVG` e `MAX`, subconsultas em `FROM`, e agrupamento com `GROUP BY`.

### `2998 - The Payback.sql`
Consulta que calcula o retorno de investimento e o mês de payback para clientes com base em suas operações financeiras.
- **Técnicas:** Subconsultas aninhadas, cálculo condicional com `NULLIF`, e arredondamento com `CEILING`.

### `2609 - Produtos por Categorias.sql`
Consulta que calcula o total de produtos por categoria.
- **Técnicas:** Junções com `LEFT JOIN`, agregação com `SUM`, e ordenação com `ORDER BY`.

## Comandos e Conceitos Abordados
- **Filtros:** Uso do `WHERE` para selecionar dados específicos.
- **Agregações:** Funções como `SUM`, `AVG`, `MAX`, e `ROUND`.
- **Subconsultas:** Inclusão de consultas dentro de outras para cálculos dinâmicos.
- **Junções:** Uso de `LEFT JOIN` para combinar tabelas e tratar dados ausentes.
- **Agrupamento:** Utilização do `GROUP BY` para calcular agregações por grupo.
- **Ordenação:** Classificação dos resultados com `ORDER BY`.

