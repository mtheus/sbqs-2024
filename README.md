# Using People and Code Metrics Extracted from SCM Logs to Improve Software Reliability

Software reliability is a fundamental aspect of software quality, directly influencing user satisfaction and operational stability. This study explores the utilization of both people and code metrics extracted from Source Control Management (SCM) logs to predict and improve software reliability. By analyzing data from GIT repositories, we assess how various metrics, including coupling, complexity, revision effort, code ownership distribution, and developer contributions, impact the Time Between Failures (TBF) and the Time Between Defects and Implementation (TBI).

Principal Component Analysis (PCA) was employed to identify the most significant variables from the collected metrics, followed by correlation and regression analyses to determine their influence on TBF and TBI. Our findings reveal that high coupling and code complexity negatively affect software reliability, while strong developer contributions and effective code ownership distribution enhance it. Additionally, frequent and extensive revisions, as well as significant code changes, were found to influence software stability. This research integrates both code and people metrics to develop a comprehensive model for predicting software reliability, providing actionable insights for improving software development practices. The results highlight the importance of managing code complexity, dependencies, and fostering strong developer collaboration to enhance the reliability of software systems.

## Procedimentos para Reproduzir o Estudo

1. **Baixar Code Maat:**
   - Baixe a versão `code-maat-1.0.4-standalone.jar` do [repositório oficial](https://github.com/adamtornhill/code-maat) e garanta que todos os pré-requisitos para execução estejam satisfeitos.

2. **Baixar o Repositório Git:**
   - Faça o download do repositório Git que deseja estudar.

3. **Preparar o Script:**
   - Inspecione e ajuste o script `run.sh` de acordo com a estrutura de diretório do seu projeto. O script irá extrair o histórico de commits do Git e executar as análises usando a ferramenta Code Maat.

4. **Executar o Notebook:**
   - Abra o notebook `estudo_confiabilidade.ipynb`. Certifique-se de ter Python e DuckDB instalados. Verifique a estrutura de pastas e nomes de arquivos. O notebook agregará todos os arquivos CSV extraídos pela ferramenta e classificará os commits, utilizando DuckDB para calcular TBI e TBF. O arquivo resultante, `estudo_fatores1.csv`, será gerado.

5. **Análise com Jamovi:**
   - Instale o Jamovi e importe o template do arquivo `.omv`. Importe o CSV `estudo_fatores1.csv`, realize as análises de regressão e atualize os pesos dos scores no `estudo_confiabilidade.ipynb`. Execute o restante do script para gerar o arquivo `estudo_fatores2.csv`.

6. **Análise Final:**
   - Importe o `estudo_fatores2.csv` no Jamovi e realize o restante das análises.

## Notas Adicionais

- Certifique-se de que todos os pré-requisitos de software e bibliotecas estão instalados antes de iniciar o processo.
- Consulte a documentação do Code Maat e do DuckDB para detalhes adicionais sobre a configuração e execução das ferramentas.

Agradecemos por sua participação e interesse em nossa pesquisa!