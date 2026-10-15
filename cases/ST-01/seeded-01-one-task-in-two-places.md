title: A scope that holds the same task in the parent and in the project
expect: STRUCT-2
grade: warn
why: "Choose a fitter" is a task in the household index and in the boiler project.
---
==== household/index.org
#+TITLE: Household

* Tasks
** TODO Choose a fitter for the new boiler from the three quotes

==== household/projects/new-boiler.org
#+TITLE: New boiler

* NEXT Choose a fitter from the three quotes
* TODO Book the installation
