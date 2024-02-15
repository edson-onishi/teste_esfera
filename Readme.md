## Teste de engenharia de dados.

### O teste consiste em desenvolver um processo de ETL para processar arquivos CSV e armazenar os dados em um banco de dados.

### Arquivos para o teste:
- [gdvReceitasExcel.csv](docs/C:\Users\Iago_\Downloads\gdvReceitasExcel.csv)
- [gdvDespesasExcel.csv](docs/C:\Users\Iago_\Downloads\gdvDespesasExcel.csv)


### Requisitos:

- Adequar os tipos de dados para os mais apropriados.
- Utilizar Python e/ou SQL para a análise dos dados.
- Hospedar o código do projeto e uma explicação detalhada no GitHub.

### Ferramentas utilizadas: 

- Para leitura e tratamento dos arquivos: Python
- Banco de dados para armazenar: BigQuery
- Para analise dos dados: SQL
- Hospedagem do código: GitHub

### Entregáveis:

- Criar uma tabela final, sendo a junção das outras duas tabelas que deve conter a soma do valor total de receita, e o total da despesa do Estado de São Paulo, agrupado pela fonte de recursos e tipo de despesa.
- Responder quais são as 10 maiores fontes de recursos e os 10 maiores tipos de despesa.

### Etapas para acessar o BigQuery e realizar o envio dos DataFrames: 

* Baixar o Json da service account e ativar a API do BigQuery