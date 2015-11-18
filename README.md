# cookiecutter-data-science

cookiecutter-data-science contains the boilerplate you need to start a Data Science project.

Project Goals
* Provide project templates to quickstart Data Science research & development projects
* Stop the use of filenames such as YYYYMMDD_data_exploration_v1_new_old_new_v34_final_new.sql


## Install guide

Get cookiecutter
```bash
$ pip install cookiecutter
```

Now run it against this repo
```bash
$ cookiecutter https://github.com/jvawdrey/cookiecutter-data-science.git
```
You will be prompted to answer a set of questions which will be used to fill out the boilerplate. Note - Hitting enter will keep the defaults displayed.

Enter project
```bash
$ cd <project name>
```

Create git repo for version control
```bash
# initialize project
$ git init

# add all files
$ git add -A

# first commit
$ git commit -m "init commit"
```

## Contact

* Jarrod Vawdrey (jvawdrey@pivotal.io)
