#!/usr/bin/env python

# dependencies
import os

# root project directory
PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)

def remove_file(filepath):
  os.remove(os.path.join(PROJECT_DIRECTORY, filepath))

def remove_dir(dirpath):
  for root, dirs, files in os.walk(os.path.join(PROJECT_DIRECTORY, dirpath), topdown=False):
    for name in files:
      os.remove(os.path.join(root, name))
    for name in dirs:
      os.rmdir(os.path.join(root, name))

def set_todaysdate(setting_file_location):
    # Open locals.py
    with open(setting_file_location) as f:
        file_ = f.read()

    # Generate a SECRET_KEY that matches the Django standard
    SECRET_KEY = get_random_string()

    # Replace "CHANGEME!!!" with SECRET_KEY
    file_ = file_.replace('***TODAYSDATE***', SECRET_KEY, 1)

    # Write the results to the locals.py module
    with open(setting_file_location, 'w') as f:
        f.write(file_)

#def get_filelist(dirpath):
#    for root, dirs, files in os.walk(os.path.join(PROJECT_DIRECTORY, dirpath), topdown=False):
#      for name in files:


#if __name__ == '__main__':
    #if '{{ cookiecutter.generate_sql_dir }}' != 'y':
        #remove_dir('sql')
