# programaria-dados-machine-learning
# Projeto Integrado de Análise de Dados e Modelagem Preditiva - PrograMaria

## Visão Geral do Projeto

Este repositório contém um projeto end-to-end focado no mapeamento socioeconômico e demográfico de profissionais da área de Dados no Brasil. O estudo abrange desde o tratamento de dados relacionais via SQL e análise exploratória em Python, até a construção de um dashboard interativo no Looker Studio e a implementação de um modelo preditivo de Regressão Linear focado na interpretabilidade de fatores de renda.

---

## Estrutura do Repositório


* sql/
  * consultas_dbeaver.sql (Scripts DDL, DML e consultas relacionais executadas no DBeaver)
* img/
  * overview.jpg (Visão geral do dashboard de diversidade)
  * genero.jpgg (Detalhamento analítico por gênero)
  * etnia.jpg (Detalhamento analítico por etnia)
* reports/
  * Relatorio1_Programaria-2.pdf (Versão estática exportada do dashboard)
* PROGRAMARIA_Dados.ipynb (Caderno de tratamento de dados, banco relacional e EDA)
* PROGRAMARIA_Dados_ML.ipynb (Caderno de engenharia de recursos, regressão linear e interpretabilidade)
* README.md (Documentação principal do projeto)

---

## Dashboard Interativo (Looker Studio)

Para a visualização executiva dos indicadores de diversidade, distribuição geográfica e analise detalhada de genêro e etnia, foi desenvolvido um painel interativo no Looker Studio.

Link de acesso ao dashboard interativo:
[Acessar Dashboard no Looker Studio] (https://datastudio.google.com/reporting/edf5d59c-8431-4d8c-88b2-3d5d71bfc176))

Uma cópia estática do relatório também está disponível no repositório em: `reports/Relatorio1_Programaria.pdf`

### Prévia do Painel

#### Visão Geral e Distribuição Geográfica
![Visão Geral](img/Overview.jpg)

#### Análise Detalhada por Gênero
![Análise de Gênero](img/genero.jpg)

#### Análise Detalhada por Etnia
![Análise de Etnia](img/etnia.jpg)

---

## Módulos e Etapas Técnicas

### 1. Banco de Dados Relacional e Manipulação SQL (DBeaver)
* Estruturação de tabelas para representação de dados demográficos e geográficos.
* Execução de rotinas de limpeza, padronização de tipos de dados e criação de chaves.
* Elaboração de consultas com agrupamentos (`GROUP BY`), agregações (`SUM`, `COUNT`, `AVG`) e cruzamentos relacionais (`INNER JOIN`).

### 2. Análise Exploratória e Engenharia de Recursos (Python)
* Identificação e tratamento de valores ausentes e inconsistências na base original.
* Mapeamento de variáveis categóricas ordinais (ex: conversão de níveis de escolaridade para escala quantitativa).
* Extração e padronização do tempo de experiência técnica e porte das empresas.
* Criação de marcadores analíticos para recortes de raça/etnia e gênero.

### 3. Modelagem Preditiva e Interpretabilidade (Scikit-Learn)
* Codificação de variáveis categóricas utilizando One-Hot Encoding (`pd.get_dummies`).
* Divisão da base entre conjuntos de treino (80%) e teste (20%).
* Padronização das variáveis explicativas via `StandardScaler`.
* Ajuste de modelo de Regressão Linear para estimativa de remuneração.

#### Métricas do Modelo Preditivo
* R² Score: ~0,53 (o modelo explica aproximadamente 53% da variância salarial).
* Erro Médio Absoluto (MAE): ~R$ 3.298,96.

---

## Principais Resultados e Insights de Negócio

Conforme demonstrado no gráfico de coeficientes da Regressão Linear padronizada e nos painéis de visualização:

1. Fatores de Maior Impacto Positivo na Remuneração:
   * Cargo e Senioridade: Posições de Gestão e Sênior representam os maiores impulsionadores isolados do aumento salarial.
   * Experiência Técnica e Formação: O tempo de experiência na área de dados e o nível de escolaridade apresentam forte correlação positiva com a renda.
   * Setores de Atuação: Os setores de Finanças/Bancos, E-commerce e Tecnologia oferecem remunerações acima da média do mercado.

2. Fatores de Redução Salarial e Disparidades Registradas:
   * Setores com Menor Remuneração: O setor de Indústria e segmentos como Telecomunicações, Educação e Terceiro Setor (ONGs) apresentaram coeficientes negativos no modelo, indicando níveis salariais inferiores aos de Tecnologia e Finanças.
   * Disparidades Socioeconômicas e Regionais: Marcadores demográficos (como a variável referente a pessoas não brancas) e localizações geográficas fora dos principais centros econômicos apresentaram coeficientes negativos, evidenciando lacunas estruturais de renda no setor de tecnologia.

---


## Autora

Talita Marques Rodrigues  
[LinkedIn](www.linkedin.com/in/talitamarquesbraga) 
