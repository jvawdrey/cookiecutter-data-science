# {{cookiecutter.project_name}}

{{cookiecutter.project_description}}


## Environment

*Note - The scripts contained in this Repo have been tested in the following
environment. Extra care should be taken when running code/scripts in different
environment configurations as unexpected results and/or errors may occur.*

```sql

# HAWQ version
SELECT version();
-- <Enter result here>

# MADlib version
SELECT madlib.version();
-- <Enter result here>

```

To Do
* Python package versions
* plr version
* R package versions


## Environment Preparation

``` sql

# create development & production schemas
CREATE SCHEMA dev;
# CREATE SCHEMA prod;

# Confirm required tables exist in <schemaname> schema
SELECT table_schema||'.'||table_name
FROM information_schema.tables
WHERE table_schema = '<schemaname>'
AND table_name IN (
  '<tablename>'
)
ORDER BY 1;
/*
<Enter results here>
*/

# <add table checks for other schemas if required>
```


## Setup git repository
```bash

# cd into project directory
$ cd ***PROJECTDIR***

# initialize project
$ git init

# add all files
$ git add -A

# first commit
$ git commit -m "init commit"

```

### working with git example
```bash

# create dev branch (if not already created)
$ git checkout -b dev

# confirm on dev branch
$ git branch

# do some work on branch

# commit work
$ git add -A
$ git commit -m "fixed this on that file"

# do some more work on branch and add/commit again or merge branch with master

# pull master
$ git checkout master

# merge dev
$ git merge dev

# delete dev branch
$ git branch -f dev

```

## Repo layout

* **/data:** Utility project data such as mapping tables
* **/docs:** Project documents including excel files
* **/img:** Visualizations generated for project
* **/python:** Python code for project
* **/prod:** "Operational ready code"
* **/prod/tests:**  "Tests for prod code"
* **/r:** R code for project
* **/sql:** SQL scripts
  * **/sql/udf-plpgsql:** PL/pgsql user defined functions
  * **/sql/udf-plpythonu:** PL/pythonu user defined functions
  * **/sql/udf-plsql:** PL/sql user defined functions
  * **/sql/udf-plr:** PL/r user defined functions
* **/tmp:** Temp files (Note - Files in this directory are ignored from Git repo)
* **/twb:** Tableau workbooks


## File descriptions

* **/data:**
  * *filename: description*
* **/docs:**
  * *filename: description*
* **/img:**
  * *Note - Relevant images are documented in related powerpoint presentation in
    the '/docs' directory*
* **/python:**
  * *filename: description*
* **/r:**
  * data-exploration.R: This code contains data exploration queries used
    to understand available data for cleaning and feature generation.
* **/sql:**
  * data-exploration.sql: This script contains data exploration queries used
    to understand available data for cleaning and feature generation.
  * data-preparation.sql:  This script contains table generation queries
    used to prepare available data for feature generation.
  * feature-generation.sql: This script creates features (independent
    variables) for testing as inputs into the models.
  * feature-selection.sql: This script contains a set of queries which
    calculate summary statistics, correlations etc. to be used for feature
    selection.
  * model-scoring.sql: This script is used to apply model to new data (scoring)
  * model-update.sql: This script is used to update (retrain) model
* **/sql/udf-plpgsql:**
  * *filename: description*
* **/sql/udf-plpythonu:**
  * *filename: description*
* **/sql/udf-plsql:**
  * *filename: description*
* **/sql/udf-plr:**
  * *filename: description*
* **/twb:**
  * *filename: description*


## Steps to score (apply models) to new data

1. *Enter step here*
2. *Enter step here*
3. *Enter step here*
4. *Enter step here*


## Steps to update (retrain) models

1. *Enter step here*
2. *Enter step here*
3. *Enter step here*
4. *Enter step here*


## Additional notes

* *Insert any additional notes here*

## Contact

* {{cookiecutter.full_name}} ({{cookiecutter.email}})
